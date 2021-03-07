;;; init-auto-complete.el --- AUTO-COMPLETE

;;; Commentary:
;; auto-complete setting.

;;; Code:
(require-package 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(setq ac-use-menu-map t)
(setq ac-ignore-case nil)


(provide 'init-auto-complete)
;;; init-auto-complete.el ends here
