;; typescript-mode
(when (require 'typescript-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
	(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode)))
