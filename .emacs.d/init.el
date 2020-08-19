;;; INITIAL SETTINGS
;; hide startup page
(setq inhibit-startup-screen t)

;; add load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "public_repos")

;; split custom file to .emacs.d/conf/custom.el
(setq custom-file (locate-user-emacs-file "custom.el"))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)



;;; ELPA REPOSITORY
(require 'package)

;; add MELPA
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/"))

;; add marmalade
(add-to-list
 'package-archives
 '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)



;;; AUTOMATE
;; backup
(add-to-list 'backup-directory-alist (cons "."  "~/.emacs.d/backups/"))

;; auto save
(setq auto-save-file-name-transforms
			`((".*", "~/.emacs.d/backups/" t)))
(setq auto-save-timeout 5)
(setq auto-save-list-file-prefix nil)

;; load when the file was changed
(global-auto-revert-mode t)

;; auto complete
(when (require 'auto-complete-config nil t)
	(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
	(ac-config-default)
	(setq ac-use-menu-map t)
	(setq ac-ignore-case nil))



;;; EMACS STYLES
;; theme
(load-theme 'ample-zen t)

;; keybinds
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; add column number
(column-number-mode t)

;; frame title format
(setq-default frame-title-format "%f")

;; paren
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(set-face-attribute 'show-paren-match nil
		    :background 'unspecified)
(set-face-background 'show-paren-match "blue")
(show-paren-mode t)

;; indent
(setq-default tab-width 2)



;;; OTHER PKGS
;; edit something searched by grep
(require 'wgrep nil t)

;; undo history
(when (require 'undohist nil t)
	(undohist-initialize))

;; undo tree
(when (require 'undo-tree nil t)
	(global-undo-tree-mode))

;; elscreen
(when (require 'elscreen nil t)
	(elscreen-start)
	(if window-system
			(define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
		(define-key elscreen-map (kbd "C-z") 'suspend-emacs)))

;; emacs lisp mode hooks
(defun elisp-mode-hooks ()
  "lisp-mode-hooks"
  (when (require 'eldoc nil t)
    (setq eldoc-idle-delay 0.2)
    (setq eldoc-echo-area-use-multiline-p t)
    (turn-on-eldoc-mode)))
(add-hook 'emacs-lisp-mode-hook 'elisp-mode-hooks)

;; web-mode
(when (require 'web-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
	(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
	(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
	(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
	(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
	(defun web-mode-hooks ()
		"web-mode-hooks"
		(setq web-mode-markup-indent-offset 2)
		(setq web-mode-code-indent-offset 2)
		(setq web-mode-css-indent-offset 2)
		(setq web-mode-style-padding 0)
		(setq web-mode-script-padding 0))
	(add-hook 'web-mode-hook 'web-mode-hooks))

;; typescript-mode
(when (require 'typescript-mode nil t)
	(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
	(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode)))
