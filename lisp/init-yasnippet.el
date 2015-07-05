(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")

(require 'yasnippet)
(setq yas-snippet-dirs
      '(
        "~/.emacs.d/plugins/yasnippet/yasmate/snippets"
        "~/.emacs.d/plugins/yasnippet/snippets"
        ))

(yas-global-mode 1)

(add-hook 'web-mode-hook
          #'(lambda ()
              (yas-activate-extra-mode 'html-mode)
              (yas-activate-extra-mode 'rails-mode)
              ))

(provide 'init-yasnippet)
