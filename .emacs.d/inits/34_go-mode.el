;; enable
(require 'go-mode)

(defun go-mode-hooks ()
  "go-mode hooks"
)
(add-hook 'go-mode 'go-mode-hooks)

;; go bin
(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin"))

;; go get tools
(add-to-list 'exec-path (expand-file-name "/usr/local/go/lib/bin"))

;; gofmt before save
(add-hook 'before-save-hook 'gofmt-before-save))

;; godef jump
(add-hook 'go-mode-hook (lamda ()
							   (local-set-key (kbd "M-.") 'godef-jump)))

