(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
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
(set-face-background 'show-paren-match-face "gray10")
(set-face-foreground 'show-paren-match-face "SkyBlue")

;; c common mode
(add-hook 'c-mode-common-hook
            '(lambda ()
               (define-key c-mode-base-map "\C-m" 'newline-and-indent)))

;; c mode
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "linux")))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "linux")))

(defun hilite-todos ()
  (highlight-lines-matching-regexp "\\<\\(FIXME\\|WRITEME\\|WRITEME!\\|TODO\\|BUG\\):?" 
       'hi-green-b)
)
(add-hook 'c-mode-common-hook 'hilite-todos)
