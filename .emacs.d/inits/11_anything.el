;;; anything config

(require 'anything)

(require 'descbinds-anything)

(when (require 'anything nil t)
  (setq
   ;; 候補を表示するまでの時間
   anything-input-idle-delay 0.3
   ;; 体感速度の向上？
   anything-quick-update t
   ;; 候補選択ショートカットをアルファベットに
   anything-enable-shortcuts 'alphabet)

  (require 'anything-match-plugin nil t)

  (when (require 'anything-complete nil t)
	;;
	(anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
	(require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
	(descbinds-anything-install))
  )
