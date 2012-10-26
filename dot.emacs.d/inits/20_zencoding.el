;;;; zencoding
;; expand by <TAB> in sgml-mode
(add-hook 'sgml-mode 'zencoding-mode)
(define-key zencoding-mode-keymap (kbd "TAB") 'zencoding-expand-line)
