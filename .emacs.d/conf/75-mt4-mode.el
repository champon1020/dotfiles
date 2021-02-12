;;; 75-mt4-mode.el --- MT4 mode.

;;; Commentary:
;; This file provides MT4 mode settings.

;;; Code:
(when (require 'mt4-mode nil t)
  (defun mt4-mode-hooks ()
    "Hooks for mt4 mode."
    (add-to-list 'auto-mode-alist '("\\.mq4\\'" . mt4-mode))
    (setq tab-width 2))
  (add-hook 'mt4-mode-hook 'mt4-mode-hooks))

(provide '75-mt4-mode)
;;; 75-mt4-mode.el ends here

