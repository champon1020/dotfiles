;;; 62-go-mode.el --- go mode

;;; Commentary:
;; This file provides go mode settings.

;;; Code:
;; go-mode
(when (require 'go-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
	(defun go-mode-hooks ()
		"Hooks for go mode"
		(setq tab-width 4)
		(setq c-basic-offset 4)
		(setq gofmt-command "goimports")
		(add-hook 'before-save-hook 'gofmt-before-save)
		(local-set-key (kbd "M-.") 'godef-jump)
		(local-set-key (kbd "C-c C-a") 'go-import-add))
	(add-hook 'go-mode-hook 'go-mode-hooks)
	(when (require 'go-eldoc nil t)
		(add-hook 'go-mode-hook 'go-eldoc-setup)))

;; go-eldoc
(when (require 'go-autocomplete nil t)
	(custom-set-variables
	 '(ac-go-expand-arguments-into-snippets nil)))

(provide '62-go-mode)
;;; 62-go-mode.el ends here
