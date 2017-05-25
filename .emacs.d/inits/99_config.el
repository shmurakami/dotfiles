;; set encoding to utf-8-unix
;; 00で設定してたけどinitsのどこかで変わってしまうので99で最後に設定する
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(when (eq system-type 'windows-nt)
  (set-w32-system-coding-system 'utf-8-unix)) ; for windows
