;;; begin el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files")

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(el-get-bundle popup)
(el-get-bundle auto-complete)
;;(el-get-bundle company-mode)
(el-get-bundle helm)
(el-get-bundle helm-gtags)
(el-get-bundle helm-rails)
;;(el-get-bundle rinari)
(el-get-bundle magit)
(el-get-bundle helm-ls-git)
(el-get-bundle web-mode)
(el-get-bundle emmet-mode)
(el-get-bundle haml-mode)
(el-get-bundle solarized-emacs)
;;(el-get-bundle color-theme-solarized)

;;(el-get-bundle flycheck)
(el-get-bundle elpa:flycheck)
(el-get-bundle elpa:flycheck-pos-tip)

;;; end el-get

;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file "~/.emacs.d/lisp/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

;;(require 'init-popwin)
;;(require 'init-popup)

(require 'init-visual-regexp)

(require 'init-yasnippet)

;;(require 'init-clang-complete)
;;(require 'init-irony)

(require 'init-highlightindentation)

;;(require 'init-emacs-rails)
;;(require 'init-rhtml-mode)
;;(require 'init-web-mode)
;;(require 'init-ac-emmet)
(require 'init-yaml-mode)
(require 'init-coffee-mode)
(require 'init-golang)

(require 'init-member-functions)

;;(require 'init-multiple-cursors)

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
