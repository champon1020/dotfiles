;;; init-global.el --- GLOBAL SETTING

;;; Commentary:
;; Emacs global setting.

;;; Code:
;; Backups directory.
(add-to-list 'backup-directory-alist (cons "." "~/.emacs.d/backups/"))


;; Auto saving.
(setq auto-save-file-name-transforms `((".*", "~/.emacs.d/backups/" t)))
(setq auto-save-timeout 5)
(setq auto-save-list-file-prefix nil)


;; Theme.
(require-package 'ample-zen-theme)
(load-theme 'ample-zen t)


;; Update buffer automatically when the file out of emacs was updated.
(global-auto-revert-mode t)


;; Display row number.
(global-linum-mode t)


;; Display column number.
(column-number-mode t)


;; Frame title format.
(setq-default frame-title-format "%f")


;; Parenthesis highlight.
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(set-face-attribute 'show-paren-match nil
		    :background 'unspecified)
(set-face-background 'show-paren-match "blue")
(show-paren-mode t)


;; Indent.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)


;; Hide startup page.
(setq inhibit-startup-screen t)


;; Don't wrap the text as overflowing.
;; Toggle this with "C-c l".
(setq truncate-lines t)


(provide 'init-global)
;;; init-global.el ends here
