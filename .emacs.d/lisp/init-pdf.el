;;; init-pdf.el --- PDF

;;; Commentary:
;; PDF setting.

;;; Code:
(require-package 'openwith)
(openwith-mode t)
(setq openwith-associations '(("\\.pdf\\'" "evince" (file))))


(provide 'init-pdf)
;;; init-pdf.el ends here
