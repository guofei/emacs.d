(add-to-list 'load-path "~/.emacs.d/plugins/ac-emmet")
(require 'ac-emmet)

(add-hook 'sgml-mode-hook 'ac-emmet-html-setup)
(add-hook 'css-mode-hook 'ac-emmet-css-setup)

(provide 'init-ac-emmet)
