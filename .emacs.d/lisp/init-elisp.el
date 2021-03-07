;;; init-elisp.el --- ELISP MODE

;;; Commentary:
;; elisp mode setting.

;;; Code:
(defun elisp-mode-hooks ()
  "Hooks for elisp mode."
  (when (require 'eldoc nil t)
    (setq eldoc-idle-delay 0.2)
    (setq eldoc-echo-area-use-multiline-p t)
    (turn-on-eldoc-mode)))
(add-hook 'emacs-lisp-mode-hook 'elisp-mode-hooks)


(provide 'init-elisp)
;;; init-elisp.el ends here
