;;; mt4.el ---- major-mode for metatrader 4
;; Copyright (c) 2017 Ryan Kung
;; Author: Ryan Kung <ryankung@ieee.org>
;; Keywords: metatrader mt4 mql4
;;; Commentary:

;;; Code:

(defvar mql-compiler
  "wine '$HOME/.wine/drive_c/Program Files (x86)/OANDA - MetaTrader 4/metaeditor.exe'")


(defun compile-mql (&optional file)
  "Compile current FILE."
  (interactive)
  (let* ((filename (or file load-file-name buffer-file-name))
         (path (file-name-directory filename))
         (command (format "%s /compile:'%s/%s' /log" mql-compiler path filename)))
    (async-shell-command command)))

;;;###autoload
(define-derived-mode mt4-mode c-mode "mt4"
  "major mode for editing mt4 language code."
  (local-set-key (kbd "C-x c") 'compile-mql)
  )

(provide 'mt4)
;;; mt4.el ends here
