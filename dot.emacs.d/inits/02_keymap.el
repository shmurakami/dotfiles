;; for mac, command-key to control
;; (when (eq system-type 'mac)
;;   (setq mac-command-modifier 'control))

;;;; global-map
;; newline and indent
(define-key global-map (kbd "C-m") 'newline-and-indent)
;; toggle line-break
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; change active window
(define-key global-map (kbd "C-o") 'other-window)
;; paste
(define-key global-map (kbd "C-v") 'clipboard-yank)
;; undo
(define-key global-map (kbd "C-z") 'undo)
;; redo
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-y") 'redo))
;; go to line
(define-key global-map (kbd "C-c C-l") 'goto-line)
;; scroll up one line
(define-key global-map (kbd "s-<up>") 'View-scroll-line-backward)
;; scroll down one line
(define-key global-map (kbd "s-<down>") 'View-scroll-line-forward)
;; delete backward
;; (global-set-key (kbd "C-h") 'delete-backward-char)
;;change buffer
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)

;;;; copy to clipboard
(cond (window-system
	   (setq x-select-enable-clipboard t)))

