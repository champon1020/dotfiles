;;; init-undohist.el --- UNDOHIST

;;; Commentary:
;; undohist setting.

;; Code:
(require-package 'undohist)
(setq undohist-ignored-files
      '("/tmp/"))
;;(undohist-initialize)


(provide 'init-undohist)
;;; init-undohist.el ends here
