(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.ctp\\'" . php-mode))
  ;; hit C-c C-f on php-function to search
  (setq php-search-url "http://jp.php-net/ja/")
  (setq php-manual-url "http://jp.php.net/manual/ja/"))

;; fix indent(c-mode) bug
(defun php-indent-hook ()
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  ;; (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-close 0))

;; php-mode  ‰¥∞
(defun php-completion-hook ()
  (when (require 'php-completion nil t)
	(php-completion-mode t)
	(define-key php-mode-map (kbd "s-F") 'phpcmp-complete)

	(when (require 'auto-complete nil t)
	  (make-variable-frame-local 'ac-sources)
	  (add-to-list 'ac-sources 'ac-source-php-completion)
	  (auto-complete-mode t))))

(add-hook 'php-mode 'php-indent-hook)
(add-hook 'php-mode-hook 'php-completion-hook)
