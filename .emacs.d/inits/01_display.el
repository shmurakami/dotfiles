;; set language
(set-language-environment "Japanese")

;; tab width
(setq-default tab-width 4)

;; hide tool-bar
(tool-bar-mode 0)

;; color
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (color-theme-dark-laptop))

;; frame-size
(setq initial-frame-alist
	  (append
	   (list
		'(width . 180)
		'(height . 50))
	   initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

;; show full file-path on title-bar
(setq frame-title-format "%f")

;; show line-number
(global-linum-mode t)

;; high-light match paren
(setq show-paren-delay 0)
(show-paren-mode t)

;; whitespace color
;(global-whitespace-mode t)
;(set-face-foreground 'whitespace-space "Gray20")
;(set-face-background 'whitespace-space "Black")
;(set-face-foreground 'whitespace-tab "Gray20")
;(set-face-background 'whitespace-tab "Black")

