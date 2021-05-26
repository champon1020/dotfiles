;;; init-sh.el --- SHELL SCRIPT MODE

;;; Commentary:
;; Shell script mode setting.

;;; Code:
(add-to-list 'auto-mode-alist '("\\.sh$" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.bash$" . sh-mode))

(defun sh-mode-hooks ()
  "Hooks for sh mode."
  (setq sh-basic-offset 2)
  (setq sh-indentation 2))

(add-hook 'sh-mode-hook 'sh-mode-hooks)

(provide 'init-sh)
;;; init-sh.el ends here
