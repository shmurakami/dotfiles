;; fonts for Mac

;; english
(set-face-attribute 'default nil
					:family "Monaco")

;; japanese
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Hiragino Kaku Gothic ProN"))

;; ratio
(setq face-font-rescale-alist
	  '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)))
