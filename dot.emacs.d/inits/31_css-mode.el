(defub cssm-mode-hooks ()
  "css-mode hooks"
  ;; use c-style indent
  (setq cssm-indent-function #'cssm-c-style-indenter)
  ;; indent width to 2
  (setq cssm-indent-level 2)
  ;; no tab to indent
  (setq-default indent-tabs-mode nil)
  ;; newline before close bracket
  (setq cssm-newline-before-closing-bracket t))

(add-hook 'css-mode 'cssm-mode-hooks)
