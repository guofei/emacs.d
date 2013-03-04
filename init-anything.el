(add-to-list 'load-path "~/.emacs.d/plugins/anything")
(require 'anything-config)

(define-key global-map (kbd "C-x a") 'anything)


(provide 'init-anything)