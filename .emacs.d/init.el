;;; init-keybind.el --- INITIAL SETTINGS

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
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    (leaf-keywords-init)))


(leaf leaf
  :config
  (leaf leaf-convert :ensure t)
  (leaf leaf-tree
    :ensure t
    :custom ((imenu-list-size . 30)
             (imenu-list-position . 'left))))


(leaf macrostep
  :ensure t
  :bind (("C-c e" . macrostep-expand)))


(leaf elscreen
  :doc "Multi screen"
  :ensure t
  :preface
  (global-unset-key (kbd "C-z"))

  :custom ((elscreen-tab-display-kill-screen . nil)
           (elscreen-tab-display-control . nil)
           (elscreen-display-screen-number . nil)
           (elscreen-prefix-key . "\C-z"))

  :hook (after-init-hook . elscreen-start))


(leaf cus-edit
  :tag "builtin" "faces" "help"
  :custom `((custom-file . ,(locate-user-emacs-file "custom.el"))))


(leaf cus-start
  :tag "builtin" "internal"
  :preface (defun c/redraw-frame nil
             (interactive)
             (redraw-frame))

  :bind (("M-ESC ESC" . c/redraw-frame)
         ("C-c l" . toggle-truncate-lines)
         ("C-c /" . comment-region)
         ("C-c ." . uncomment-region)
         ("C-x l" . goto-line))

  :custom ((truncate-lines . t)
           (debug-on-error . t)
           (init-file-debug . t)
           (history-length . 1000)
           (history-delete-duplicates . t)
           (ring-bell-function . 'ignore)
           (scroll-bar-mode . -1)
           (linum-mode . nil)
           (column-number-mode . t)
           (indent-tabs-mode . nil)
           (tab-width . 2))

  :config
  (add-to-list 'backup-directory-alist (cons "." "~/.emacs.new/backups/"))

  :mode-hook
  (before-save-hook . ((delete-trailing-whitespace))))


(leaf nlinum
  :doc "light weight linum mode"
  :ensure t
  :custom ((global-nlinum-mode . t)
           (nlinum-format . "%3d ")))


(leaf paren
  :doc "highlight parenthesises"
  :tag "builtin"
  :custom ((show-paren-delay . 0.1)
           (show-paren-style . 'parenthesis))

  :config (set-face-background 'show-paren-match "blue")
  :global-minor-mode show-paren-mode)


(leaf ample-zen-theme
  :doc "Theme"
  :ensure t
  :config (load-theme 'ample-zen t))


(leaf dired-quick-sort
  :doc "Dired sort"
  :ensure t
  :custom ((dired-quick-sort-group-directories-last . ?y))
  :config (dired-quick-sort-setup))


(leaf flycheck
  :doc "On-the-fly syntax checking"
  :ensure t
  :bind (("M-n" . flycheck-next-error)
         ("M-p" . flycheck-previous-error))

  :global-minor-mode global-flycheck-mode)


(leaf company
  :doc "Completion framework"
  :ensure t
  :blackout t
  :bind ((company-active-map
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-s" . company-filter-candidates)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
          ("<tab>" . company-complete-selection))
         (company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))

  :custom ((company-idle-delay . 0)
           (company-minimum-prefix-length . 1)
           (company-transformers . '(company-sort-by-occurrence)))

  :global-minor-mode global-company-mode)


(leaf undohist
  :doc "Undo history"
  :ensure t
  :custom ((undohist-ignore-files . '("/tmp/")))
  :after (undohist-initialize))


(leaf undo-tree
  :doc "Undo tree"
  :ensure t
  :config (global-undo-tree-mode))


(leaf elisp-mode
  :doc "Elisp mode"
  :mode-hook
  (emacs-lisp-mode-hook . ((setq eldoc-idle-delay 0.2)
                           (setq eldoc-echo-area-use-multiline-p t)
                           (turn-on-eldoc-mode))))


(leaf go-mode
  :doc "Go mode"
  :ensure t
  :config
  (leaf flycheck :ensure t)
  (leaf go-eldoc
    :ensure t
    :bind ((go-mode-map
            ("M-." . godef-jump)
            ("C-c d" . godoc))))

  :custom ((gofmt-command . "goimports"))

  :mode-hook
  (go-mode-hook . ((setq tab-width 4)
                   (add-hook 'before-save-hook 'gofmt-before-save)
                   (go-eldoc-setup)
                   (flycheck-mode))))


(leaf python-mode
  :doc "Python mode"
  :ensure t
  :config
  (leaf flycheck :ensure t)
  (leaf py-isort :ensure t)
  (leaf python-black :ensure t)

  :mode-hook
  (python-mode-hook . ((setq tab-width 4)
                       (add-hook 'before-save-hook 'py-isort-before-save)
                       (python-black-on-save-mode)
                       (flycheck-mode))))


(leaf rust-mode
  :doc "Rust mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

  :mode-hook
  (rust-mode-hook . ((defvar rust-format-on-save t))))


(leaf asm-mode
  :doc "Assembly mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.asm\\'" . asm-mode))
  (add-to-list 'auto-mode-alist '("\\.nas\\'" . asm-mode))

  :mode-hook
  (asm-mode-hook . ((setq indent-tabs-mode nil)
                    (setq tab-width 4))))


(leaf web-mode
  :doc "Web mode"
  :ensure t
  :config
  (leaf prettier :ensure t)
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))

  :mode-hook
  (web-mode-hook . ((defvar web-mode-markup-indent-offset 2)
                    (defvar web-mode-css-indent-offset 2)
                    (defvar web-mode-code-indent-offset 2)
                    (defvar web-mode-block-padding 2)
                    (defvar web-mode-style-padding 0)
                    (defvar web-mode-script-padding 0)
                    (prettier-mode))))


(leaf typescript-mode
  :doc "Typescript mode"
  :ensure t
  :config
  (leaf prettier :ensure t)
  (add-to-list 'auto-mode-alist '("\\.ts[x]?\\'" . typescript-mode))

  :mode-hook
  (typescript-mode-hook . ((defvar typescript-indent-level 2)
                           (prettier-mode))))


(leaf vue-mode
  :doc "Vue mode"
  :ensure t
  :config
  (leaf prettier :ensure t)
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))

  :mode-hook
  (mmm-mode-hook . ((set-face-background 'mmm-default-submode-face nil)
                    (prettier-mode))))


(leaf sh-mode
  :doc "Shell mode"
  :config
  (add-to-list 'auto-mode-alist '("\\.sh\\'" . sh-mode))
  (add-to-list 'auto-mode-alist '("\\.bash\\'" . sh-mode))

  :mode-hook
  (sh-mode-hook . ((defvar sh-basic-offset 2)
                   (defvar sh-indentation 2))))


(leaf sql-mode
  :doc "SQL mode"
  :config
  (add-to-list 'auto-mode-alist '("\\.sql$" . sql-mode)))


(leaf poly-markdown
  :doc "Markdown mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.md\\'" . poly-markdown-mode)))


(leaf openwith
  :doc "Open file with file viewer"
  :ensure t
  :custom ((openwith-mode . t)
           (openwith-associations . '(("\\.pdf\\'" "evince" (file))))))


(leaf json-mode
  :doc "Json mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

  :mode-hook
  (json-mode-hook . ((defvar js-indent-level 2))))


(leaf yaml-mode
  :doc "Yaml mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))


(leaf dockerfile-mode
  :doc "Dockerfile mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile*\\'" . dockerfile-mode)))


(leaf terraform-mode
  :doc "Terraform mode"
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.tf\\'" . terraform-mode))
  (add-to-list 'auto-mode-alist '("\\.tf.json\\'" . terraform-mode)))


(leaf oj
  :doc "Competitive programming tools"
  :url "https://github.com/conao3/oj.el"
  :ensure t
  :custom ((oj-compiler-c . "clang")
           (oj-compiler-python . "cpython")
           (oj-default-online-judge . 'atcoder)
           (oj-home-dir . "~/repos/go/src/github.com/champon1020/playground/oj/")))


(provide 'init)

;;; init.el ends here
