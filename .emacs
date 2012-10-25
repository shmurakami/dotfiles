(setq-default tab-width 4)
(set-language-environment "Japanese")

;; no-beep
(setq visible-bell t)
(setq bell-style nil)

;; paste target
(setq mouse-yank-at-point t)

;; hide tool-bar
(tool-bar-mode 0)
;;(load "~/.emacs.d/hide-toolbar.el" 'noerror)

;; old version support
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

;; for mac command-key to control
;; (when (eq system-type 'mac)
;;   (setq mac-command-modifier 'control))

;; add load path
(add-to-list 'load-path "~/emacs.d/elisp")

;; load sub directory
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	    (add-to-list 'load-path default-directory)
	    (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
		(normal-top-level-add-subdirs-to-load-path))))))

;; add load-path
(add-to-load-path "elisp" "conf" "public_repos")

;; package
(when (require 'package nil t)
  (add-to-list 'package-archives
			   '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
			   '("ELPA" . "http://tromey.com/elpa"))
  (package-initialize))

;;;; key bind
;; newline and indent
(define-key global-map (kbd "C-m") 'newline-and-indent)
;; toggle line-break
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; change active window
(define-key global-map (kbd "C-o") 'other-window)
;; paste
(define-key global-map (kbd "C-v") 'clipboard-yank)
;; undo
(global-set-key (kbd "C-z") 'undo)
;; redo
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-y") 'redo))
;; goto line
(define-key global-map (kbd "C-c C-l") 'goto-line)
;; scroll up one line
(define-key global-map (kbd "C-<up>") 'View-scroll-line-backward)
;; scroll down one line
(define-key global-map (kbd "C-<down>") 'View-scroll-line-forward)

;; color theme
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (color-theme-dark-laptop))

;; frame size
(setq initial-frame-alist
	  (append (list
			   '(width . 60)
			   '(height . 50))
			  initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

;; show full-path on title-bar
(setq frame-title-format "%f")

;; show line-number on left-side of window
(global-linum-mode t)

;; space indent, if php
(add-hook 'php-mode-hook
     (lambda ()
       setq indent-tabs-mode nil))

;; font
(set-face-attribute 'default nil :family "SourceCodePro-ExtraLight" :height 120)
;;(set-face-attribute 'default nil :family "Osaka" :height 120)

;; key bind
;;(global-set-key (kbd "C-h") 'delete-backward-char)


;; undohist
(when (require 'undohist nil t)
  (undohist-initialize))

;; undpo-tree
;; C-x u q:quit
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

;; point undo
(when (require 'point-undo nil t)
  (define-key global-map (kbd "C-c C-z") 'point-undo)
  (define-key global-map (kbd "C-c C-y") 'point-redo))

;; hilight current line
;;(defface my-hl-line-face
;;  '((((class color)(background  dark))
;;	 (:background "#gray" t))
;;	(((class color)(background light))
;;	 (:background "LightGoldenrodYellow" t))
;;	(t (:bold t)))
;;  "hl-line's my face")
;;(setq hl-line-face 'my-hl-line-face)
;;(global-hl-line-mode t)

;; hilight match-paren
(setq show-paren-delay 0)
(show-paren-mode t)

;; auto-backup to TEMP
;; (setq backup-directory-alist `((".*" , temporary-file-directory)))
;; (setq auto-save-file-name-transforms `((".*" , temporary-file-directory t)))
;; (setq auto-save-interval 500)

;; if file body started by "#!", add +x
;; (add-hook 'after-save-hook
;; 	 'executable-make-buffer-file-executable-if-script-p)
;; (executable-make-buffer-file-executable-if-script-p)

;; eldoc
(defun emacs-list-mode-hooks ()
  "list-mode-hooks"
  (when (require 'eldoc nil t)
	(setq eldoc-idle-delay 0.2)
	(setq eldoc-echo-area-use-multiline-p t)
	(turn-on-eldoc-mode)))
	
(defun elisp-mode-hooks ()
  "lisp-mode-hooks"
  (when (require 'eldoc nil t)
	(setq eldoc-idle-delay 0.2)
	(setq eldoc-echo-area-use-mutiline-p t)
	(turn-on-eldoc-mode)))
(add-hook 'emacs-list-mode-hooks 'elisp-mode-hooks)

;; auto-install
(when (require 'auto-install nil t)
  ;; set install dir
  (setq auto-install-directory "~/.emacs.d/elisp/")
  ;; get elisp name registered emacs-wiki
  (auto-install-update-emacswiki-package-name t)
  ;; available install-elisp
  (auto-install-compatibility-setup))

;; save && re-load ~/.emacs
(fset 'lc
   [?\C-x ?\C-s escape ?x ?l ?o ?a ?d ?- ?f ?i ?l ?e return ?. ?e ?m ?a ?c ?s return])

;; ELScreen
;; like a GNU screen
;;(when (require 'elscreen nil t)
;;  (if window-system
;;	 (define-key elscreen-map (kbd "C-t") 'suspend-emacs)))

;; php-mode(
when (require 'php-mode nil t)
  (setq php-mode-force-pear t)
  (add-to-list 'auto-mode-alist '("\\.php$" . php-mode)))

;; anything
;; (auto-install-batch <RET> anything <RET>)
(when (require 'anything nil t)
  (setq
   anything-idle-delay 0.3
   anything-quick-update t
   anything-enable-shortcuts 'alphaet)

  ;; win: windows-nt or cygwin, mac: darwin, linux: gnu/linux
  (when (eq system-type 'darwin)
    (when (require 'anything-config nil t)
      (setq anything-su-or-sudo "sudo")))

  (require 'anything-match-plugin nil t)

  (when (and (executable-find "cmigemo")
			 (require 'migemo nil t))
	(require 'anything-migemo nil t))

  (when (require 'anything-complete nil t)
	(anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
	(require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
	(descbinds-anything-install)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((Coding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ruby
(require 'ruby-electric nil t)
;; highlight line mathed to end
(when (require 'ruby-block nil t)
  (setq ruby-block-highlight-toggle t))
;; interactive
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
;; function for ruby-mode-hook
(defun ruby-mode-hooks ()
  (inf-ruby-keys)
  (ruby-electric-mode t)
  (ruby-block-mode t))
;; add to ruby-mode-hook
(add-hook 'ruby-mode-hook 'ruby-mode-hooks)

;; zencoding
(add-hook 'sgml-mode 'zencoding-mode)
(define-key zencoding-mode-keymap (kbd "TAB") 'zencoding-expand-line)
