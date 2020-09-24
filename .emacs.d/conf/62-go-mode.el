;;; 62-go-mode.el --- go mode

;;; Commentary:
;; This file provides go mode settings.

;;; Code:
;; go-mode
(when (require 'go-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
	(defun go-mode-hooks ()
		"Hooks for go mode"
    (setq indent-tabs-mode nil)
		(setq tab-width 4)
		(setq standard-indent 4)
		(setq gofmt-command "goimports")
		(define-key go-mode-map (kbd "M-.") 'godef-jump)
    (define-key go-mode-map (kbd "C-c d") 'godoc)
    (add-hook 'before-save-hook 'gofmt-before-save))
  (add-hook 'go-mode-hook 'go-mode-hooks))

;; go-eldoc
(when (require 'go-eldoc nil t)
  (add-hook 'go-mode-hook 'go-eldoc-setup))

;; go-autocomplete
(when (require 'go-autocomplete nil t)
  (defun go-autocomplete-hooks ()
    (ac-config-default)
    (custom-set-variables
     '(ac-go-expand-arguments-into-snippets nil)))
  (add-hook 'go-mode-hook 'go-autocomplete-hooks))


(provide '62-go-mode)
;;; 62-go-mode.el ends here
