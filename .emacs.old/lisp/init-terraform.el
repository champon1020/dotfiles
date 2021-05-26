;;; init-terraform.el --- TERRAFORM MODE

;; Commentary:
;; Terraform mode setting.

;;; Code:
(require-package 'terraform-mode)

(add-to-list 'auto-mode-alist '("\\.tf$" . terraform-mode))
(add-to-list 'auto-mode-alist '("\\.tf.json$" . terraform-mode))

(provide 'init-terraform)
;;; init-terrafrom.el ends here
