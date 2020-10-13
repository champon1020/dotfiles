;;; 72-dockerfile-mode.el --- dockerfile mode

;;; Commentary:
;; This file provides dockerfile mode settings.

;;; Code:
(when (require 'dockerfile-mode nil t)
  (defun dockerfile-mode-hooks ()
    (setq tab-width 2))
  
  (add-hook 'dockerfile-mode-hook 'dockerfile-mode-hooks))

(provide '72-dockerfile-mode)
;;; 72-dockerfile-mode.el ends here
