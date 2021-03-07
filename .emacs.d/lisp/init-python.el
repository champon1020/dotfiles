;;; init-python.el --- PYTHON MODE

;; Commentary:
;; Python mode setting.

;;; Code:
(require-package 'python-mode)
(require-package 'py-isort)
(require-package 'python-black)

(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))

(defun python-mode-hooks ()
  (setq tab-width 4)
  (add-hook 'before-save-hook 'py-isort-before-save))

(add-hook 'python-mode-hook 'python-mode-hooks)
(add-hook 'python-mode-hook 'python-black-on-save-mode)


(provide 'init-python)
;;; init-python.el ends here
