;;; 73-sh-mode.el --- shell script mode

;;; Commentary:
;; This file provides shell script mode settings.

;;; Code:
(defun sh-mode-hooks ()
	"Hooks for sh mode."
  (setq sh-basic-offset 2)
  (setq sh-indentation 2))

(add-hook 'sh-mode-hook  'sh-mode-hooks)

(provide '73-sh-mode)
;;; 73-sh-mode.el ends here