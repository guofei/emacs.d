(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))


(setq web-mode-markup-indent-offset 2)


;; (setq web-mode-ac-sources-alist
;;       '(("css" . (ac-source-css-property))
;;         ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
;;
;; (setq web-mode-ac-sources-alist
;;       '(("erb" . (ac-source-yasnippet ac-source-rails-auto-yasnippets))
;;         ("html" . (ac-source-emmet-html-aliases ac-source-emmet-html-snippets))
;;         ("css" . (ac-source-css-property ac-source-emmet-css-snippets))))

(add-hook 'web-mode-before-auto-complete-hooks
          '(lambda ()
             (let ((web-mode-cur-language
                    (web-mode-language-at-pos)))
               (if (string= web-mode-cur-language "html")
                   (yas-activate-extra-mode 'html-mode)
                 (yas-deactivate-extra-mode 'html-mode))
               (if (string= web-mode-cur-language "html")
                   (yas-activate-extra-mode 'rails-mode)
                 (yas-deactivate-extra-mode 'rails-mode))
               (if (string= web-mode-cur-language "css")
                   (setq emmet-use-css-transform t)
                 (setq emmet-use-css-transform nil)))))


(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
