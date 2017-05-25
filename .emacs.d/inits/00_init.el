;; old version support
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacd.d"))

;; no-beep
;;(setq visible-bell t)
(setq bell-style nil)

;; auto-backup to backup directoruy
(add-to-list 'backup-directory-alist
    (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name0transforms `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))
;; auto-backup 600seconds interval
(setq auto-save-interval 600)

;; use clipboard
(setq x-select-enable-clipboard t)

;; default chara code
(set-default-coding-systems 'utf-8-unix)
