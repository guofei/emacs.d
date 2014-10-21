(add-to-list 'load-path "~/.emacs.d/plugins/helm-etags-plus")

(require 'helm-etags+)

(global-set-key "\M-." 'helm-etags+-select)
;;list all visited tags
(global-set-key "\M-*" 'helm-etags+-history)
;;go back directly
(global-set-key "\M-," 'helm-etags+-history-action-go-back)
;;go forward directly
(global-set-key "\M-/" 'helm-etags+-history-action-go-forward)

(provide 'init-helm-etags)
