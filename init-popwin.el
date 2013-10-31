(add-to-list 'load-path "~/.emacs.d/plugins/popwin")
(require 'popwin)

(popwin-mode 1)

;;move here to init-helm.el
;;(setq display-buffer-function 'popwin:display-buffer)
;;(push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)

;; M-x compile
(push '(compilation-mode :noselect t) popwin:special-display-config)

(provide 'init-popwin)
