(add-to-list 'load-path "~/.emacs.d/plugins/emacs-clang-complete-async")

(require 'auto-complete-clang-async)

(defun ac-clang-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/plugins/emacs-clang-complete-async/clang-complete")
  ;;(setq ac-sources
  ;;	(append '(ac-source-clang-async) ac-sources))
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process))

(defun clang-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-clang-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(clang-ac-config)

(provide 'init-clang-complete)
