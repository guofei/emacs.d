(add-hook 'after-init-hook #'global-flycheck-mode)

;;; c++11
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))

;; disable jshint since we prefer eslint checking
;; (setq-default flycheck-disabled-checkers
;;               (append flycheck-disabled-checkers
;;                       '(javascript-jshint)))


;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)


;; disable json-jsonlist checking for json files
;; (setq-default flycheck-disabled-checkers
;;               (append flycheck-disabled-checkers
;;                       '(json-jsonlist)))


(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
