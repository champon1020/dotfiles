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
