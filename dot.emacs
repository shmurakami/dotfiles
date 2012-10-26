;;; add load-path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/color-theme-6.6.0"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/color-theme-6.6.0/themes"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auto-install"))

 
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; subject of load files from init-loader
;; 0x - fundamental settings
;; 1x - 
;; 2x - plugin elisp
;; 3x - 
 
