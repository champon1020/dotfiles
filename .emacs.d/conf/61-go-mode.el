;; go-mode
(when (require 'go-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
	(defun go-mode-hooks ()
		"go-mode-hooks"
		(setq tab-width 4)
		(setq c-basic-offset 4)
		(setq gofmt-command "goimports")
		(add-hook 'before-save-hook 'gofmt-before-save)
		(local-set-key (kbd "M-.") 'godef-jump)
		(local-set-key (kbd "C-c C-a") 'go-import-add))
	(add-hook 'go-mode-hook 'go-mode-hooks))
