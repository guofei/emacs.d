;;brew install global or apt-get install global

(add-to-list 'load-path "~/.emacs.d/plugins/helm-gtags")

(require 'helm-config)
(require 'helm-gtags)

;;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)
(add-hook 'go-mode-hook 'helm-gtags-mode)
(add-hook 'python-mode-hook 'helm-gtags-mode)
(add-hook 'ruby-mode-hook 'helm-gtags-mode)
(add-hook 'php-mode-hook 'helm-gtags-mode)
(add-hook 'java-mode-hook 'helm-gtags-mode)

;; customize
(setq helm-gtags-path-style 'relative)
(setq helm-gtags-ignore-case t)
(setq helm-gtags-read-only t)
(setq helm-gtags-auto-update t)

;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
	     ;;(local-set-key (kbd "M-.") 'helm-gtags-find-tag)
	     ;;(local-set-key (kbd "M-*") 'helm-gtags-pop-stack)
	     ;;(local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
	     ;;(local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
	     ;;(local-set-key (kbd "M-g M-p") 'helm-gtags-parse-file)
	     (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-find-tag)
	     (define-key helm-gtags-mode-map (kbd "M-*") 'helm-gtags-pop-stack)
	     (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
	     (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
	     (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
	     (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
	     (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
))

(provide 'init-helm-gtags)
