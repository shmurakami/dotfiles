;;;; emmet mode

;; ref: http://qiita.com/ironsand/items/55f2ced218949efbb1fb

(when (require 'emmet-mode nil t)
    (add-hook 'sgml-mode-hook 'emmet-mode)
    (add-hook 'html-mode-hook 'emmet-mode)
    (add-hook 'css-mode-hook  'emmet-mode)
	(eval-after-load "emmet-mode"
	  '(define-key emmet-mode-keymap (kbd "C-j") nil)) ; C-jで展開しない
	(keyboard-translate ?\C-i ?\H-i) ; ?

	(define-key global-map (kbd "C-c E") 'emmet-expand-line))
