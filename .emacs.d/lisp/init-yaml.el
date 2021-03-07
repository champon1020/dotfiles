;;; init-yaml.el --- YAML MODE

;; Commentary:
;;; yaml mode setting.

;;; Code:
(require-package 'yaml-mode)
(require-package 'dockerfile-mode)

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(defun yaml-mode-hooks ()
  (setq tab-width 2))

(add-hook 'yaml-mode-hook 'yaml-mode-hooks)
(add-hook 'dockerfile-mode 'yaml-mode-hooks)

(provide 'init-yaml)
;;; init-yaml.el ends here
