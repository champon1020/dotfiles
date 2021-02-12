;;; 67-c++-mode.el --- c++ mode

;;; Commentary:
;; This file provides c++ mode settings.

;;; Code:
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cxx\\'" . c++-mode))

(defun c++-mode-hooks ()
  "Hooks for c++ mode."
  (setq tab-width 2)
  (lambda () (setq flycheck-clang-include-path (list "/usr/local/include"))))

(add-hook 'c++-mode-hook 'c++-mode-hooks)

(provide '64-c++-mode)
;;; 67-c++-mode.el ends here
