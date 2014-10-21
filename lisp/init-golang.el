(add-to-list 'load-path "~/go-workspace/src/github.com/nsf/gocode/emacs")

(require 'go-autocomplete)

(add-to-list 'exec-path (expand-file-name "~/go-workspace/bin"))

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))


(provide 'init-golang)
