;;; 02-util.el --- Utilities.

;;; Commentary:
;; This file provides some settings.

;;; Code:
(add-to-list 'backup-directory-alist (cons "."  "~/.emacs.d/backups/"))

;; auto save
(setq auto-save-file-name-transforms `((".*", "~/.emacs.d/backups/" t)))
(setq auto-save-timeout 5)
(setq auto-save-list-file-prefix nil)

;; load when the file was changed
(global-auto-revert-mode t)

;; auto complete
(when (require 'auto-complete-config nil t)
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default)
  (setq ac-use-menu-map t)
  (setq ac-ignore-case nil))

;; Display row number.
(global-linum-mode t)

;; hide startup page
(setq inhibit-startup-screen t)

(provide '02-util.el)
;;; 02-util.el ends here
