;;; 74-json-mode.el --- json mode

;;; Commentary:
;; This file provides json mode settings.

;;; Code:
(when (require 'json-mode nil t)
  (defun json-mode-hooks ()
    "Hooks for json mode."
    (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
    (defvar json-indent-level 2)
    (setq js-indent-level 2))

  (add-hook 'json-mode-hook 'json-mode-hooks))

(provide '74-json-mode)
;;; 74-json-mode.el ends here
