;;; init-markdown.el --- MARKDOWN MODE

;;; Commentary:
;; Markdown mode setting.

;;; Code:
(require-package 'markdown-mode)
(require-package 'markdown-preview-mode)

(add-to-list 'auto-mode-alist '("\\.md&" . markdown-mode))

(defun markdown-mode-hooks ()
  "Hooks for markdown mode"
  (setq tab-width 4)
  (define-key markdown-mode-map (kbd "C-c p") 'markdown-preview-mode))

(setq markdown-preview-stylesheets (list "github.css"))

(add-hook 'markdown-mode-hook 'markdown-mode-hooks)


(provide 'init-markdown)
;;; init-markdown.el ends here
