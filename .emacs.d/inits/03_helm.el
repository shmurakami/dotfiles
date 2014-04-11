(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/helm/helm"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/helm/helm-descbinds"))

;; helm
(require 'helm-config)

;; helm-descbinds
(require 'helm-descbinds)
(helm-descbinds-mode 1)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c d") 'helm-descbinds)
(global-set-key (kbd "C-c c") 'helm-occur)
(global-set-key (kbd "C-c y") 'helm-show-kill-ring)
