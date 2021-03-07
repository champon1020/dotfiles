;;; init-sql.el --- SQL MODE

;;; Commentary:
;; sql mode setting.

;;; Code:
(require-package 'sql-indent)

(add-to-list 'auto-mode-alist '("\\.sql$" . sql-mode))

(defun sql-mode-hooks ()
  "Hooks for sql mode"
  (setq sqlind-basic-offset 2))

(add-hook 'sql-mode-hook 'sql-mode-hooks)
(add-hook 'sql-mode-hook 'sqlind-minor-mode)


(provide 'init-sql)
;;; init-sql.el ends here
