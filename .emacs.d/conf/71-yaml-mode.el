;;; 71-yaml-mode.el --- yaml mode

;;; Commentary:
;; This file provides yaml mode settings.

;;; Code:
(when (require 'yaml-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
  (defun yaml-mode-hooks ()
    (setq tab-width 2))
  (add-hook 'yaml-mode-hook 'yaml-mode-hooks))

(provide '71-yaml-mode)
;;; 71-yaml-mode.el ends here
