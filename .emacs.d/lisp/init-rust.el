;;; init-rust.el --- RUST MODE

;;; Commentary:
;; Rust mode setting.

;;; Code:
(require-package 'rust-mode)

(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))

(defun reus-mode-hooks ()
  "Hooks for rust mode."
  (setq indent-tabs-mode nil)
  (setq rust-format-on-save t))

(add-hook 'rust-mode-hook 'rust-mode-hooks)


(provide 'init-rust)
;;; init-rust.el ends here
