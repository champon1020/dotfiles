;;; 05-keybinds.el --- Keybinds for Emacs

;;; Commentary:
;; This file provides keybind settings.

;;; Code:
;; keybinds
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c /") 'comment-region)

(when (require 'multi-term nil t)
	(define-key global-map (kbd "C-t") 'multi-term))

(when (require 'markdown-preview-mode nil t)
	(define-key global-map (kbd "C-x C-p") 'markdown-preview-mode))

(provide '03-keybinds)
;;; 05-keybinds.el ends here
