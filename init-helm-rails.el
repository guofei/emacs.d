(add-to-list 'load-path "~/.emacs.d/plugins/helm-rails")
(require 'helm-rails-loaddefs)

(define-key global-map (kbd "C-c r c") 'helm-rails-controllers)
(define-key global-map (kbd "C-c r m") 'helm-rails-models)
(define-key global-map (kbd "C-c r v") 'helm-rails-views)
(define-key global-map (kbd "C-c r s") 'helm-rails-specs)
(define-key global-map (kbd "C-c r a") 'helm-rails-all)

(provide 'init-helm-rails)
