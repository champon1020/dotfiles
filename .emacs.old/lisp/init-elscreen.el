;;; init-elscreen.el --- ELSCREEN

;;; Commentary:
;; elscreen setting.

;;; Code:
;; elscreen
(require-package 'elscreen)
(elscreen-start)
(if window-system
    (define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
  (define-key elscreen-map (kbd "C-z") 'suspend-emacs))


(provide 'init-elscreen)
;;; init-elscreen.el ends here
