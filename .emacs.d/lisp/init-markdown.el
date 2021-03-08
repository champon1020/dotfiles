;;; init-markdown.el --- MARKDOWN MODE

;;; Commentary:
;; Markdown mode setting.

;;; Code:
(require-package 'poly-markdown)

(add-to-list 'auto-mode-alist '("\\.md\\'" . poly-markdown-mode))


(provide 'init-markdown)
;;; init-markdown.el ends here
