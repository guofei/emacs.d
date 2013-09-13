;;brew install global or apt-get install global

(add-to-list 'load-path "~/.emacs.d/plugins/global")
(require 'gtags)

(when (locate-library "gtags") (require 'gtags))
(global-set-key "\M-." 'gtags-find-tag)     ;関数の定義元へ
(global-set-key "\M-r" 'gtags-find-rtag)    ;関数の参照先へ
(global-set-key "\M-s" 'gtags-find-symbol)  ;変数の定義元/参照先へ
;(global-set-key "\M-f" 'gtags-find-file)    ;ファイルにジャンプ
(global-set-key "\M-*" 'gtags-pop-stack)    ;前のバッファに戻る
(add-hook 'c-mode-common-hook
          '(lambda ()
             (gtags-mode 1)))

(provide 'init-global)
