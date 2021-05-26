;;; init-go.el --- GO MODE

;;; Commentary:
;; Go mode setting.

;;; Code:
(require-package 'flycheck)
(require-package 'go-mode)
(require-package 'go-eldoc)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(defun go-mode-hooks ()
  "Hooks for go mode"
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  (setq gofmt-command "goimports")
  (define-key go-mode-map (kbd "M-.") 'godef-jump)
  (define-key go-mode-map (kbd "C-c d") 'godoc)
  (add-hook 'before-save-hook 'gofmt-before-save))

(add-hook 'go-mode-hook 'go-mode-hooks)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook #'flycheck-mode)


(provide 'init-go)
;;; init-go.el ends here.
