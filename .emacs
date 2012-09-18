(setq-default tab-width 4)
(set-language-environment "Japanese")

;; auto-save nil
;;(setq make-backup-files nil)
;;(setq auto-save nil)

;; paste target
(setq mouse-yank-at-point t)

;; key bind
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-z") 'undo)

;; hide tool-bar
(load "~/.emacs.d/hide-toolbar.el" 'noerror)

;; Zen Coding
;;(add-to-list ~/emacs/zencoding-mode.el)
;;(require 'zencoding-mode')

;;tabbar(setq last-kbd-macro
;;(add-to-list ~/emacs/tabbari\.el)
;;(load ~/emacs/tabbar-config.el)

;; bell settings
(setq bell-style nil)

;; set tab size
(setq-default tab-width 4)

;; old version support
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

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

;; newline and indent
(define-key global-map (kbd "C-m") 'newline-and-indent)

;; toggle line-break
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; change active window
(define-key global-map (kbd "C-t") 'other-window)

;; show full-path on title-bar
(setq frame-title-format "%f")

;; show line-number on left-side of window
(global-linum-mode t)

;; space indent, if php
(add-hook 'php-mode-hook
     (lambda ()
       setq indent-tabs-mode nil))

;; font
;; (set-face-attribute 'default nil :family "Osaka" :height 120)

;; japanese font
(set-fontset-font nil 'japanese-jisx0208
				  (font-spec :family "ƒƒCƒŠƒI"))

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
(setq backup-directory-alist `((".*" , temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" , temporary-file-directory t)))
(setq auto-save-interval 500)

;; if file body started by "#!", add +x
(add-hook 'after-save-hook
	 'executable-make-buffer-file-executable-if-script-p)
(executable-make-buffer-file-executable-if-script-p)

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

;; M-x install-elisp
;; redo
;; http://www.emacswiki.org/emacs/download/redo+.el

;; redo
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-y") 'redo))

;; save && re-load ~/.emacs
(fset 'lc
   [?\C-x ?\C-s escape ?x ?l ?o ?a ?d ?- ?f ?i ?l ?e return ?. ?e ?m ?a ?c ?s return])

