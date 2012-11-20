;;; add load-path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auto-complete"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/color-theme-6.6.0"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/color-theme-6.6.0/themes"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auto-install"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auto-pair"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/php-completion"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/emacs-cake2"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/magit-1.2.0"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/magit-1.2.0/contrib"))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; subject of load files from init-loader
;; 0x - fundamental settings
;; 1x - functions
;; 2x - plugin elisp
;; 3x - major-mode
;; 4x - minor-mode
;; 99 - charset type 
