;;; init-company-mode --- Summary
;;; Commentary:

;;; Code:
(when (locate-library "company")
  (global-company-mode 1)
  ;; (setq company-idle-delay 0.5)
  (setq company-minimum-prefix-length 3)
  (setq company-selection-wrap-around t))
