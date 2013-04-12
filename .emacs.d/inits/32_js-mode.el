(defun js-indent-hook ()
  ;; indent width to 4
  (setq js-indent-level 4
		js-expr-indent-offset 4
		indent-tabs-mode nil)

  ;; indent func switch-case
  (defun mjs-indent-line ()
	(interactive)
	(let* ((parse-status (save-excursion (syntax-ppss (point-at-bol))))
		   (offset (- (current-column) (current-indentation)))
		   (indentation (js--proper-indentation parse-status)))
	  (back-to-indentation)
	  (if (looking-at "case\\s-")
		  (indent-line-to (+ indentation 2))
		(js-indent-line))
	  (when (> offset 0) (forward-char offset))))

  ;;
  (set (make-local-variable (indent-line-function) 'mjs-indent-line))
)

(add-hook 'js-mode-hook 'js-indent-hook)
