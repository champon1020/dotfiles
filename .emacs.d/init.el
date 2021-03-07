;;; init-keybind.el --- INITIAL SETTINGS

;;; Commentary:
;; This file provides initial settings.

;;; Code:
;; Custom file setting.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


;; Package configuration.
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)


;; Packages.
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (or (package-installed-p package min-version)
      (let* ((known (cdr (assoc package package-archive-contents)))
             (best (car (sort known (lambda (a b)
                                      (version-list-<= (package-desc-version b)
                                                       (package-desc-version a)))))))
        (if (and best (version-list-<= min-version (package-desc-version best)))
          (package-install best)
        (if no-refresh
            (error "No version of %s >= %S is available" package min-version)
          (package-refresh-contents)
          (require-package package min-version t)))
        (package-installed-p package  min-version))))


;; Load path.
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


;; Load inits.
;;(require 'init-package)
(require 'init-global)
(require 'init-keybind)
(require 'init-dired-quick-sort)
(require 'init-elscreen)
(require 'init-undohist)
(require 'init-undo-tree)
(require 'init-auto-complete)

(require 'init-elisp)
(require 'init-go)
(require 'init-python)
(require 'init-web)
(require 'init-vue)
(require 'init-typescript)
(require 'init-rust)
(require 'init-markdown)
(require 'init-yaml)
(require 'init-json)
(require 'init-sh)
(require 'init-asm)
(require 'init-sql)


(provide 'init)
;;; init.el ends here
