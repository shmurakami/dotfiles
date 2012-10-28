;;;; cakephp2
(when (require 'cake2 nil t)
  ;; keybind for cakephp2 available
  (cake2-set-default-keymap)
  (global-cake2 t))

(when (and (require 'auto-complete nil t)
		   (require 'ac-cake2 nil t))
  ;; defun for ac-cake2
  (defun ac-cake2-hook ()
	(make-variable-buffer-local 'ac-sources)
	(add-to-list 'ac-sources 'ac-source-cake2))

  ;; add ac-cake method to php-mode
  (add-hook 'php-mode-hook 'ac-cake2-hook))
	
