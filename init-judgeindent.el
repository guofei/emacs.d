(add-to-list 'load-path "~/.emacs.d/plugins/judge-indent")

(require 'judge-indent)
(global-judge-indent-mode t)
(setq judge-indent-default-tab-width 8)
(setq judge-indent-default-indent-width 8)
(setq judge-indent-major-modes '(c-mode cc-mode))

(provide 'init-judgeindent)