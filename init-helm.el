(add-to-list 'load-path "~/.emacs.d/plugins/helm")
(require 'helm-config)

(define-key global-map (kbd "C-x a") 'helm-mini)

(provide 'init-helm)
