;;; 40-undo.el --- Undo settings

;;; Commentary:
;; This file provides undo settings.
;; Packages:
;;   undohist, undotree

;;; Code:
;; undo history
(when (require 'undohist nil t)
	(undohist-initialize))

;; undo tree
(when (require 'undo-tree nil t)
	(global-undo-tree-mode))

(provide '40-undo)
;;; 40-undo.el ends here
