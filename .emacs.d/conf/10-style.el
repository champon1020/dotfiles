;; theme
(load-theme 'ample-zen t)

;; keybinds
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

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
(setq-default tab-width 2)
