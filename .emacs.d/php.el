;php
(autoload 'php-mode "php-mode")
(setq auto-mode-alist
    (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
(add-hook 'php-mode-user-hook
    '(lambda ()
         (setq php-manual-path "~/.emacs.d/php/html")
         (setq php-manual-url "http://php.net/manual/ja/")))