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

(require 'init-highlightindentation)

;;(require 'init-judgeindent)

;; requre Mac OS X
(if (eq system-type 'darwin)
    ;; mac gud
    (require 'init-gud)
)

