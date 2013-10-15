(add-to-list 'load-path "~/.emacs.d/plugins/helm")
(require 'helm-config)

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(setq helm-split-window-default-side 'right)
(push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)

(defun helm-my-buffers ()
  (interactive)
  (helm-other-buffer '(helm-c-source-buffers-list
                       helm-c-source-recentf
                       helm-c-source-files-in-current-dir
                       helm-c-source-buffer-not-found)
                     "*helm-my-buffers*"))

(define-key global-map (kbd "C-x a") 'helm-my-buffers)

(provide 'init-helm)
