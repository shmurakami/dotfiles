;;;; zencoding
;; expand by <TAB> in sgml-mode
(require 'zencoding-mode)
(set-face-foreground 'modeline "red)"
(add-hook 'sgml-mode 'zencoding-mode)
(add-hook 'html-mode 'zencoding-mode)
(define-key zencoding-mode-keymap (kbd "<tab>") 'zencoding-expand-line)
