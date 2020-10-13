;;; 64-asm-mode.el --- asm mode

;;; Commentary:
;; This file provides assembly mode settings.

;;; Code:
(when (require 'asm-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.asm\\'" . asm-mode))
  (add-to-list 'auto-mode-alist '("\\.nas\\'" . asm-mode))
  (defun asm-mode-hooks ()
    (setq indent-tabs-mode nil)
    (setq tab-width 4))
(add-hook 'asm-mode-hook 'asm-mode-hooks))

(provide '64-asm-mode)
;;; 64-asm-mode.el ends here
