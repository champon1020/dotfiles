;;; 41-multi-term.el --- multi-term

;;; Commentary:
;; This file provides multi-term settings.
;; multi-term provides terminal for Emacs.

;;; Code:
;; setup terminal on emacs
(when (require 'multi-term nil t)
	(defun term-mode-hooks ()
		"term-mode-hooks"
		(global-unset-key (kbd "C-c"))
		(message "%s" "term-mode-hooks is enabled."))
	(add-hook 'term-mode-hook 'term-mode-hooks))

(provide '41-multi-term)
;;; 41-multi-term.el ends here
