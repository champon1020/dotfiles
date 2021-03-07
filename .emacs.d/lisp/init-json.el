;;; init-json.el --- JSON MODE

;;; Commentary:
;; Json mode setting.

;;; Code:
(require-package 'json-mode)

(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(defun json-mode-hooks ()
  "Hooks for json mode."
  (setq js-indent-level 2))

(add-hook 'json-mode-hook 'json-mode-hooks)


(provide 'init-json)
;;; init-json.el ends here
