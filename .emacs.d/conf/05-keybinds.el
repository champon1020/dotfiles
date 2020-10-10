;;; 05-keybinds.el --- Keybinds for Emacs

;;; Commentary:
;; This file provides keybind settings.

;;; Code:
;; keybinds
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c /") 'comment-region)

(when (require 'multi-term nil t)
	(define-key global-map (kbd "C-t") 'eshell))

(when (require 'markdown-preview-mode nil t)
	(define-key global-map (kbd "C-c C-m p") 'markdown-preview-mode)
	(define-key global-map (kbd "C-c C-m c") 'markdown-preview-cleanup))

(provide '03-keybinds)
;;; 05-keybinds.el ends here
