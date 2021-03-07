;;; init-vue.el --- VUE MODE

;;; Commentary:
;; Vue mode setting.

;;; Code:
(require-package 'vue-mode)

(add-to-list 'auto-mode-alist '("\\.vue$" . vue-mode))
(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))


(provide 'init-vue)
;;; init-vue-mode.el ends here
