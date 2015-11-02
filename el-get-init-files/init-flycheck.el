(require 'flycheck)


(add-hook 'after-init-hook #'global-flycheck-mode)

;;; c++11
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))

;; disable jshint since we prefer eslint checking
;; (eval-after-load 'flycheck
(setq-default flycheck-disabled-checkers
                 (append flycheck-disabled-checkers
                         '(javascript-jshint)))


;; disable json-jsonlist checking for json files
;; (eval-after-load 'flycheck
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))


;; use eslint with web-mode for jsx files
;; (eval-after-load 'flycheck
(flycheck-add-mode 'javascript-eslint 'web-mode)


(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

