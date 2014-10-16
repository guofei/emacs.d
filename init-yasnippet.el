(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")

(require 'yasnippet)
(setq yas-snippet-dirs
      '(
	"~/.emacs.d/plugins/yasnippet/yasmate/snippets"
	"~/.emacs.d/plugins/yasnippet/snippets"
	))
(yas-global-mode 1)

(provide 'init-yasnippet)
