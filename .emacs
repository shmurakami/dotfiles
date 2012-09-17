;; bell settings
(setq bell-style nil)

;; set tab size
(setq-default tab-width 4)

;; old version support
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

;; add load path
(add-to-list 'load-oath "~/emacs.d/elisp")

;; load sub directory
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	    (add-to-list 'load-path default-directory)
	    (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
		(normal-top-level-add-subdirs-to-load-path))))))

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
