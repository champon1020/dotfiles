;;; init-web.el --- WEB MODE

;;; Commentary:
;; Web mode setting.

;;; Code:
(require-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js[x]?$" . web-mode))

(defun web-mode-hooks ()
  "Hooks for web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)  
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-block-padding 2)
  (setq web-mode-style-padding 0)
  (setq web-mode-script-padding 0))

(add-hook 'web-mode-hook 'web-mode-hooks)
(add-hook 'web-mode-hook 'prettier-mode)


(provide 'init-web)
;;; init-web.el ends here
