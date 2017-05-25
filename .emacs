;;; add load-path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auto-complete"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/color-theme-6.6.0"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/color-theme-6.6.0/themes"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auto-install"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/flex-auto-pair"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/php-completion"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/emacs-cake2"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/magit-1.2.0"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/magit-1.2.0/contrib"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/melpa-0.3"))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

(require 'package)
; add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
; initialize
(package-initialize)
; melpa
(require 'melpa)

;; subject of load files from init-loader
;; 0x - fundamental settings
;; 1x - functions
;; 2x - plugin elisp
;; 3x - major-mode
;; 4x - minor-mode
;; 99 - charset type 
