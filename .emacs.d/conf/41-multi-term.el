;; setup terminal on emacs
(when (require 'multi-term nil t)
	(defun term-mode-hooks ()
		"term-mode-hooks"
		(global-unset-key (kbd "C-c"))
		(message "%s" "term-mode-hooks is enabled."))
	(add-hook 'term-mode-hook 'term-mode-hooks))
