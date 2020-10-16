;;; 61-web-mode.el --- web mode

;;; Commentary:
;; This file provides web mode settings.

;;; Code:
;; web-mode
(when (require 'web-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
  (defun web-mode-hooks ()
		"Hooks for web mode."
		(setq web-mode-markup-indent-offset 2)
		(setq web-mode-code-indent-offset 2)
		(setq web-mode-css-indent-offset 2)
		(setq web-mode-style-padding 0)
		(setq web-mode-script-padding 0))
  (add-hook 'web-mode-hook 'prettier-mode)
	(add-hook 'web-mode-hook 'web-mode-hooks))

(provide '61-web-mode)
;;; 61-web-mode.el ends here
