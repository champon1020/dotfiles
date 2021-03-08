;;; init-markdown.el --- MARKDOWN MODE

;;; Commentary:
;; Markdown mode setting.

;;; Code:
(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md&" . markdown-mode))

(defun markdown-mode-hooks ()
  "Hooks for markdown mode"
  (setq tab-width 4)
  (setq markdown-command "markdown"
        markdown-command-needs-filename t
        markdown-command-content-type "application/xhtml+xml"
        markdown-css-paths '("https://cdn.jsdelivr.net/npm/github-markdown-css/github-markdown.min.css"
                             "http://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/styles/github.min.css")
        markdown-xhtml-header-content"
<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
<style>
body {
  box-sizing: border-box;
  max-width: 740px;
  width: 100%;
  margin: 40px auto;
  padding: 0 10px;
}
</style>
<script src='http://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/highlight.min.js'></script>
<script>
document.addEventListener('DOMContentLoaded', () => {
  document.body.classList.add('markdown-body');
  document.querySelectorAll('pre[lang] > code').forEach((code) => {
    code.classList.add(code.parentElement.lang);
    hljs.highlightBlock(code);
  });
});
</script>
"))

(add-hook 'markdown-mode-hook 'markdown-mode-hooks)


(provide 'init-markdown)
;;; init-markdown.el ends here
