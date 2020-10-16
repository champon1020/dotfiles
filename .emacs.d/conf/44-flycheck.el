;;; 44-flycheck.el --- flycheck

;;; Commentary:
;; This file provides flycheck settings.
;; The package provides error checking.

;;; Code:
;; setup grammer error package
(when (require 'flycheck nil t)
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(jabascript-jslint json-jsonlist)))
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide '44-flycheck)
;;; 44-flycheck.el ends here
