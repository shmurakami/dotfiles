;; for mac, command-key to control
;; (when (eq system-type 'darwin)
;;   (setq mac-command-modifier 'control))

;;;; global-map
;; newline and indent
(define-key global-map (kbd "C-m") 'newline-and-indent)
;; toggle line-break
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; change active window
;(define-key global-map (kbd "C-o") 'other-window)
;; paste
(define-key global-map (kbd "C-v") 'clipboard-yank)
;; undo
(define-key global-map (kbd "C-z") 'undo)
;; redo
(global-set-key (kbd "C-y") 'redo)
;;change buffer
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)

;;;; copy to clipboard
(cond (window-system
	   (setq x-select-enable-clipboard t)))

;; for mac keymap
;; overwrite: scroll for mac
(when (eq system-type 'darwin)
  ;; scroll line
  (define-key global-map (kbd "s-<up>") 'View-scroll-line-backward)
  (define-key global-map (kbd "s-<down>") 'View-scroll-line-forward)
  ;; undo redo
  (define-key global-map (kbd "s-z") 'undo)
  (define-key global-map (kbd "s-y") 'redo)
  ;; command canncel
  (define-key global-map (kbd "s-g") 'keyboard-quit))
