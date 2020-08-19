;; edit something searched by grep
(require 'wgrep nil t)

;; undo history
(when (require 'undohist nil t)
	(undohist-initialize))

;; undo tree
(when (require 'undo-tree nil t)
	(global-undo-tree-mode))

;; elscreen
(when (require 'elscreen nil t)
	(elscreen-start)
	(if window-system
			(define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
		(define-key elscreen-map (kbd "C-z") 'suspend-emacs)))

;; emacs lisp mode hooks
(defun elisp-mode-hooks ()
  "lisp-mode-hooks"
  (when (require 'eldoc nil t)
    (setq eldoc-idle-delay 0.2)
    (setq eldoc-echo-area-use-multiline-p t)
    (turn-on-eldoc-mode)))
(add-hook 'emacs-lisp-mode-hook 'elisp-mode-hooks)
