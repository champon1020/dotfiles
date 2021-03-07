;;; init-typescript.el --- TYPESCRIPT MODE

;;; Commentary:
;; Typescript mode setting.

;;; Code:
(require-package 'typescript-mode)
(require-package 'prettier)

(add-to-list 'auto-mode-alist '("\\.ts[x]?$" . typescript-mode))

(defun typescript-mode-hooks()
  "Hooks for typescript mode"
  (setq typescript-indent-level 2))

(add-hook 'typescript-mode-hook 'typescript-mode-hooks)
(add-hook 'typescript-mode-hook 'prettier-mode)


(provide 'init-typescript)
;;; init-typescript.el ends here
