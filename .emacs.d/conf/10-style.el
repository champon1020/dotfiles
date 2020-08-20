;;; 10-style.el --- Styles for Emacs.

;;; Commentary:
;; This file provides style settings.
;; Packages:
;;   ample-zen

;;; Code:
;; theme
(load-theme 'ample-zen t)

;; add column number
(column-number-mode t)

;; frame title format
(setq-default frame-title-format "%f")

;; paren
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(set-face-attribute 'show-paren-match nil
		    :background 'unspecified)
(set-face-background 'show-paren-match "blue")
(show-paren-mode t)

;; indent
(setq indent-tabs-mode nil)
(setq-default tab-width 2)
(setq tab-width 2)

(provide '10-style)
;;; 10-style.el ends here
