;; for go-mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/golang"))
(setenv "GOROOT" "/usr/local/go")
(setenv "GOPATH" "/usr/local/go/lib")
(require 'go-mode)

;; go bin
(add-to-list 'exec-path (expand-file-name (getenv "GOROOT")))

;; go get tools
(add-to-list 'exec-path (expand-file-name (getenv "GOPATH")))

;; gofmt before save
(add-hook 'before-save-hook 'gofmt-before-save)

;; godef jump
;(add-hook 'go-mode-hook (lamda ()
;							   (local-set-key (kbd "M-.") 'godef-jump)))

(defun go-mode-hooks ()
  "go-mode hooks"
)
(add-hook 'go-mode 'go-mode-hooks)

(eval-after-load "go-mode"
  '(progn
	 (require 'go-autocomplete)
	 (require 'auto-complete-config)
;	 (require 'go-flymake)
;	 (require 'go-flycheck)
	 (require 'go-eldoc)
	 (require 'golint)
     (add-hook 'go-mode-hooks 'go-eldocs-setup)
	 ;; key binding
	 (define-key go-mode-map (kbd "M-.") 'godef-jump)
	 (define-key go-mode-map (kbd "M-,") 'pop-tag-mark)))
