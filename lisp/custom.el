(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(helm-mini-default-sources
   (quote
    (helm-source-buffers-list helm-source-recentf helm-source-files-in-current-dir)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; transient-mark-mode on
(setq-default transient-mark-mode t)

;; Display column number
(column-number-mode t)

;; Display line number
(line-number-mode t)

;; When you visit a file, point goes to the last place where it was when you previously visited the same file
(require 'saveplace)
(setq-default save-place t)

;; Display Time
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)

;; show trailing whitespace
(setq-default show-trailing-whitespace t)

;; show "()"
(show-paren-mode t)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "gray")
(set-face-foreground 'show-paren-match-face "SkyBlue")

;; c mode
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-offset 'inextern-lang 0)))

;; c++ mode
(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-offset 'inextern-lang 0)
             (c-set-offset 'innamespace 0)))

;; c common mode
(add-hook 'c-mode-common-hook
	  '(lambda ()
	     (define-key c-mode-base-map "\C-m" 'newline-and-indent)))

(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)

(defun hilite-todos ()
  (highlight-lines-matching-regexp "\\<\\(FIXME\\|WRITEME\\|WRITEME!\\|TODO\\|WARNING\\|BUG\\):?"
				   'hi-green-b)
  )
(add-hook 'c-mode-common-hook 'hilite-todos)

;; M-x flyspell
(setq-default ispell-program-name "aspell")

;; CEDET
;; (semantic-mode 1)
;; (global-ede-mode 1)
;; (global-semantic-idle-scheduler-mode 1)
;; (defun semantic-auto-complete()
;;   (add-to-list 'ac-sources 'ac-source-semantic))
;; (add-hook 'c-mode-common-hook 'semantic-auto-complete)

;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs))

(setq mac-option-modifier 'meta)
