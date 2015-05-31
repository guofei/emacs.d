;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file "~/.emacs.d/lisp/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-magit)

(require 'init-popwin)

(require 'init-visual-regexp)

(require 'init-helm)

(require 'init-popup)

(require 'init-autocomplete)

(require 'init-yasnippet)

(require 'init-clang-complete)

(require 'init-highlightindentation)

(require 'init-helm-gtags)

(require 'init-emacs-rails)
(require 'init-helm-rails)
(require 'init-rhtml-mode)
;;(require 'init-web-mode)
(require 'init-emmet-mode)
;;(require 'init-ac-emmet)
(require 'init-yaml-mode)
(require 'init-coffee-mode)
(require 'init-golang)

(require 'init-member-functions)

(require 'init-multiple-cursors)

(require 'init-highlight-parentheses)

;;(require 'init-judgeindent)

;; requre Mac OS X
;;(if (eq system-type 'darwin)
    ;; mac gud
    ;;(require 'init-gud)
;;)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
