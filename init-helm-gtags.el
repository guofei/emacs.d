;;brew install global or apt-get install global

(add-to-list 'load-path "~/.emacs.d/plugins/helm-gtags")

(require 'helm-config)
(require 'helm-gtags)

;;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

;; customize
(setq helm-gtags-path-style 'relative)
(setq helm-gtags-ignore-case t)
(setq helm-gtags-read-only t)
(setq helm-gtags-auto-update t)

;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
	     (local-set-key (kbd "M-.") 'helm-gtags-find-tag)
	     (local-set-key (kbd "M-*") 'helm-gtags-pop-stack)
	     (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
	     (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
	     (local-set-key (kbd "M-g M-p") 'helm-gtags-parse-file)
))

(provide 'init-helm-gtags)
