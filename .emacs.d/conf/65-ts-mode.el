;;; 65-ts-mode.el --- typescript mode

;;; Commentary:
;; This file provides typescript mode settings.

;;; Code:
;; typescript-mode
(when (require 'typescript-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
	(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode)))

(provide '65-ts-mode)
;;; 65-ts-mode.el ends here
