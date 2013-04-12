;;;; zencoding
;; expand by <TAB> in sgml-mode
(require 'zencoding-mode)
(add-hook 'sgml-mode 'zencoding-mode)
(add-hook 'html-mode 'zencoding-mode)
;;(global-set-key (kbd "C-c C-e") 'zencoding-expand-line)
(global-set-key (kbd "C-c E") 'zencoding-expand-line)
