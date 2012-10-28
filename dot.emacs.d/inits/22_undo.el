;; undohist
(require 'undohist)
(undohist-initialize)

;; undo tree
;; start:C-x u, quit:q
(require 'undo-tree)
(global-undo-tree-mode)

;; point undo
(require 'point-undo)
(global-set-key (kbd "C-c C-z") 'point-undo)
(global-set-key (kbd "C-c C-y") 'point-redo)
