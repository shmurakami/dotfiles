;; for mac, command-key to control
;; (when (eq system-type 'darwin)
;;   (setq mac-command-modifier 'control))

;;;; global-map
;; previouse window
(define-key global-map (kbd "C-c o") 'previous-multiframe-window)
;; newline and indent
(define-key global-map (kbd "C-m") 'newline-and-indent)
;; toggle line-break
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; undo
(define-key global-map (kbd "C-z") 'undo)
;; redo
;(global-set-key (kbd "M-z") 'redo)
(global-set-key (kbd "C-S-z") 'redo)
;;change buffer
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)

;; change window
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(define-key global-map (kbd "C-c <left>") 'windmove-left)
(define-key global-map (kbd "C-c <top>") 'windmove-up)
(define-key global-map (kbd "C-c <right>") 'windmove-right)
(define-key global-map (kbd "C-c <down>") 'windmove-down)
(define-key global-map (kbd "C-c C-b") 'windmove-left)
(define-key global-map (kbd "C-c C-p") 'windmove-up)
(define-key global-map (kbd "C-c C-f") 'windmove-right)
(define-key global-map (kbd "C-c C-n") 'windmove-down)

;;;; copy to clipboard
(cond (window-system
	   (setq x-select-enable-clipboard t)))

;; for mac keymap
;; overwrite: scroll for mac
(when (eq system-type 'darwin)
  ;; exchange command and super
  (setq mac-command-modifier 'control)
  ;;(setq mac-control-modifier 'super)
  ;; scroll line
  (define-key global-map (kbd "s-<up>") 'View-scroll-line-backward)
  (define-key global-map (kbd "s-<down>") 'View-scroll-line-forward)
  (define-key global-map (kbd "C-S-p") 'View-scroll-line-backward)
  (define-key global-map (kbd "C-S-n") 'View-scroll-line-forward)
  ;; undo redo
  (define-key global-map (kbd "s-z") 'undo)
  (define-key global-map (kbd "s-y") 'redo)
  ;; command canncel
  (define-key global-map (kbd "s-g") 'keyboard-quit))


;; cua-mode
(define-key global-map (kbd "C-c r") 'cua-mode)
