;;; 63-c-mode.el --- c mode

;;; Commentary:
;; This file provides c mode settings.

;;; Code:
(when (require 'c-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
	(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))
	(defun c-mode-hooks ()
		"Hooks for C mode."
		(setq c-basic-offset 2)
		(setq tab-width 2))
	(add-hook 'c-mode-hook 'c-mode-hooks))

(provide '63-c-mode)
;;; 63-c-mode.el ends here
