;;; init-keybind.el --- KEYBIND

;;; Commentary:
;; Global keybind setting.

;;; Code:
;;(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c /") 'comment-region)
(define-key global-map (kbd "C-c .") 'uncomment-region)
(define-key global-map (kbd "C-x l") 'goto-line)


(provide 'init-keybind)
;;; init-keybind.el ends here
