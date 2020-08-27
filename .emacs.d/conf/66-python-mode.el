;;; 66-python-mode.el --- python mode

;;; Commentary
;; This file provides python mode settings.

;;; Code:
(when (require 'python-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
	(defun python-mode-hooks ()
		(setq tab-width 4)
		(when (require 'blacken nil t)
			(blacken-mode)
			(local-set-key (kbd "C-c C-f") 'blacken-buffer))
	(add-hook 'python-mode-hook 'python-mode-hooks))

(provide '66-python-mode)
;;; 66-python-mode.el ends here
