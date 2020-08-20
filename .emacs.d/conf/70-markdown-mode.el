;;; 70-markdown-mode.el --- markdown mode

;;; Commentary:
;; This file provides markdown mode settings.

;;; Code:
(when (require 'markdown-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
	(defun markdown-mode-hooks ()
		(setq tab-width 4))
	(add-hook 'markdown-mode-hook 'markdown-mode-hooks))

(provide '70-markdown-mode)
;;; 70-markdown-mode.el ends here
