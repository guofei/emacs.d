;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-anything)

(require 'init-popup)

(require 'init-autocomplete)

(require 'init-yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/plugins/yasnippet-snippets"
        ))
(yas-global-mode 1)

;;(require 'init-judgeindent)

(require 'init-highlightindentation)