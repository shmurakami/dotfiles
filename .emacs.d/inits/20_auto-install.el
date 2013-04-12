;;;; auto-install
(require 'auto-install)
;; set install-dir
(setq auto-install-directory "~/.emacs.d/elisp")
;; get registered elisp name to emacs-wiki
(auto-install-update-emacswiki-package-name t)
;; install compativility commands for install-elisp.el users.
(auto-install-compatibility-setup)
