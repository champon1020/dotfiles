;; elscreen
(when (require 'elscreen nil t)
	(elscreen-start)
	(if window-system
			(define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
		(define-key elscreen-map (kbd "C-z") 'suspend-emacs)))
