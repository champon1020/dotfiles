;;; 67-rust-mode.el --- rust mode

;;; COmmentary:
;; This file provides rust mode settings.

;;; Code:
(require 'rust-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(defun rust-mode-hooks ()
  (setq indent-tabs-mode nil)
  (setq rust-format-on-save t))

(add-hook 'rust-mode-hook 'rust-mode-hooks)

(provide '67-rust-mode)
;;; 67-rust-mode.el ends here
