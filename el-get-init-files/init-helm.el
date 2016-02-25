(require 'helm-config)
(helm-mode 1)

;;; (setq helm-buffers-fuzzy-matching t
;;;       helm-recentf-fuzzy-match t)

;;; (setq helm-split-window-in-side-p           nil ; open helm buffer inside current window, not occupy whole other window
;;;       helm-move-to-line-cycle-in-source     nil ; move to end or beginning of source when reaching top or bottom of source.
;;;       helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;;       helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;;       helm-ff-file-name-history-use-recentf t)

(global-set-key (kbd "C-x C-b") 'helm-for-files)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x a") 'helm-mini)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)


;;search all files : helm-for-files
