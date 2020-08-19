;;; 60-elisp-mode.el --- elisp mode

;;; Commentary:
;; This file provides elisp mode settings.

;;; Code:
;; emacs lisp mode hooks
(defun elisp-mode-hooks ()
  "Hooks for elisp mode."
  (when (require 'eldoc nil t)
    (setq eldoc-idle-delay 0.2)
    (setq eldoc-echo-area-use-multiline-p t)
    (turn-on-eldoc-mode)))
(add-hook 'emacs-lisp-mode-hook 'elisp-mode-hooks)

(provide '60-elisp-mode)
;;; 60-elisp-mode.el ends here
