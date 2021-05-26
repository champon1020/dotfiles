;;; init-asm.el --- ASM MODE

;;; Commentary:
;; Assembly mode setting.

;;; Code:
(require-package 'asm-mode)

(add-to-list 'auto-mode-alist '("\\.asm$" . asm-mode))
(add-to-list 'auto-mode-alist '("\\.nas$" . asm-mode))

(defun asm-mode-hooks ()
  (setq indent-tabs-mode nil)
  (setq tab-width 4))

(add-hook 'asm-mode-hook 'asm-mode-hooks)


(provide 'init-asm)
;;; init-asm.el ends here
