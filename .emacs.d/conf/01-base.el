;;; 01-base.el --- Basic setting

;;; Commentary:
;; This file profides basic settings.

;;; Code:
;; split custom file to .emacs.d/conf/custom.el
(setq custom-file (locate-user-emacs-file "custom.el"))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

;;; ELPA REPOSITORY
(require 'package)

;; add MELPA
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/"))

;; add marmalade
(add-to-list
 'package-archives
 '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)

;; set meta key to 'Command' on Mac
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version) t
    (if (or (assoc package package-archive-contents) no-refresh)
        (if (boundp 'package-selected-packages)
            (package-install package nil)
          (package-install package))
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(require-package 'ample-zen-theme)

(require-package 'auto-complete)
(require-package 'undo-tree)
(require-package 'undohist)
(require-package 'wgrep)
(require-package 'flycheck)
(require-package 'dired-quick-sort)

(require-package 'web-mode)
(require-package 'go-mode)
(require-package 'go-eldoc)
(require-package 'go-autocomplete)
(require-package 'cc-mode)
(require-package 'asm-mode)
(require-package 'typescript-mode)
(require-package 'python-mode)
(require-package 'python-black)
(require-package 'py-isort)
(require-package 'rust-mode)
(require-package 'markdown-mode)
(require-package 'markdown-preview-mode)
(require-package 'yaml-mode)
(require-package 'dockerfile-mode)
(require-package 'json-mode)
(require-package 'prettier)

(provide '01-base)
;;; 01-base.el ends here
