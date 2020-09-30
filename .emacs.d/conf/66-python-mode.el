;;; 66-python-mode.el --- python mode

;;; Commentary:
;; This file provides python mode settings.

;;; Code:
(when (require 'python-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
	(defun python-mode-hooks ()
		(setq tab-width 4)
    ;; isort
    (when (require 'py-isort nil t)
      (add-hook 'before-save-hook 'py-isort-before-save)))
  (add-hook 'python-mode-hook 'python-mode-hooks))

;; black
(when (require 'python-black nil t)
  (add-hook 'python-mode-hook 'python-black-on-save-mode))

(provide '66-python-mode)
;;; 66-python-mode.el ends here
