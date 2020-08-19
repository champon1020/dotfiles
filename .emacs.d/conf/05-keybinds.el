;;; 05-keybinds.el --- Keybinds for Emacs

;;; Commentary:
;; This file provides keybind settings.

;;; Code:
;; keybinds
(define-key global-map (kbd "C-t") 'multi-term)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c /") 'comment-region)

(provide '03-keybinds)
;;; 05-keybinds.el ends here
