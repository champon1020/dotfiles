;;; init-keybind.el --- INITIAL SETTINGS emacs<= 24.3

;;; Commentary:

;; My init.el.

;;; Code:

(eval-and-compile
  (when (or load-file-name byte-compile-current-file)
    (setq user-emacs-directory
          (expand-file-name
           (file-name-directory (or load-file-name byte-compile-current-file))))))


(eval-and-compile
  (customize-set-variable
   'package-archives '(("org" . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu" . "https://elpa.gnu.org/packages/")))
  (package-initialize))


;; Parenthesis highlight.
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
;;(set-face-attribute 'show-paren-match nil :background 'unspecified)
;;(set-face-background 'show-paren-match "blue")
(show-paren-mode t)


;; Backups directory.
(add-to-list 'backup-directory-alist (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms `((".*", "~/.emacs.d/backups/" t)))
(setq auto-save-timeout 5)
(setq auto-save-list-file-prefix nil)


;; Indent.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)


;; Theme.
(require 'ample-zen-theme)
(load-theme 'ample-zen t)


;; Elscreen.
(require 'elscreen)
(global-unset-key (kbd "C-z"))
(setq elscreen-tab-display-kill-screen nil)
(setq elscreen-tab-display-control nil)
(setq elscreen-display-screen-number nil)
(setq elscreen-prefix-key "\C-z")
(elscreen-start)


;; Undo tree
(require 'undo-tree)
(global-undo-tree-mode)


;; Undo history
(require 'undohist)
(setq undohist-ignored-files '("/tmp/"))


;; Dired quick sort
(require 'dired-quick-sort)
(dired-quick-sort-setup)
(setq dired-quick-sort-group-directories-last ?y)


;; Keybind
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c /") 'comment-region)
(define-key global-map (kbd "C-c .") 'uncomment-region)
(define-key global-map (kbd "C-x l") 'goto-line)


;; Python
(require 'python-mode)
(add-hook 'python-mode-hook (lambda () (setq tab-width 4)))


(provide 'init)

;;; init.el ends here
