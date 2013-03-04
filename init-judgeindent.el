(add-to-list 'load-path "~/.emacs.d/plugins/judge-indent")

(require 'judge-indent)
(global-judge-indent-mode t)
(setq judge-indent-major-modes '(c-mode cc-mode python-mode sh-mode))

(provide 'init-judgeindent)