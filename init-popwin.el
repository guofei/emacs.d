(add-to-list 'load-path "~/.emacs.d/plugins/popwin")
(require 'popwin)

(popwin-mode 1)

(setq display-buffer-function 'popwin:display-buffer)
(push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)

(provide 'init-popwin)
