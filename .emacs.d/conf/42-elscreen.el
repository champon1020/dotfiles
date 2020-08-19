;;; 42-elscreen.el --- elscreen

;;; Commentary:
;; This file provides elscreen settings.
;; The package provides multi tab screens.

;;; Code:
;; elscreen
(when (require 'elscreen nil t)
	(elscreen-start)
	(if window-system
			(define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
		(define-key elscreen-map (kbd "C-z") 'suspend-emacs)))

(provide '42-elscreen)
;;; 42-elscreen.el ends here
