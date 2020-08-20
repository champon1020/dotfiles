;;; 63-cc-mode.el --- c mode

;;; Commentary:
;; This file provides c mode settings.

;;; Code:
(when (require 'cc-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.h\\'" . cc-mode))
	(add-to-list 'auto-mode-alist '("\\.c\\'" . cc-mode))
	(add-to-list 'auto-mode-alist '("\\.hpp\\'" . cc-mode))
	(add-to-list 'auto-mode-alist '("\\.cpp\\'" . cc-mode))
	(defun cc-mode-hooks ()
		"Hooks for CC mode."
		(setq c-basic-offset 2)
		(setq tab-width 2))
	(add-hook 'cc-mode-hook 'cc-mode-hooks))

(provide '63-cc-mode)
;;; 63-cc-mode.el ends here
