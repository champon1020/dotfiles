;;; 65-typescript-mode.el --- typescript mode

;;; Commentary:
;; This file provides typescript mode settings.

;;; Code:
;; typescript-mode
(when (require 'typescript-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  (defun ts-mode-hooks ()
    (setq tab-width 2)
    (setq-default typescript-indent-level 2))
  (add-hook 'typescript-mode-hook 'ts-mode-hooks))

(provide '65-typescript-mode)
;;; 65-typescript-mode.el ends here
