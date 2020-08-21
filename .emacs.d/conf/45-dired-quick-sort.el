;;; 45-dired-quick-sort.el --- dired-quick-sort

;;; Commentary:
;; This package provides sorting directory first.

;;; Code:
(when (if (not (eq system-type 'darwin)) t nil)
	(when (require 'dired-quick-sort nil t)
		(dired-quick-sort-setup)))

(provide '45-dired-quick-sort)
;;; 45-dired-quick-sort.el ends here
