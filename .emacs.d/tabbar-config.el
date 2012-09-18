;; �O���[�v��������*scratch*�ȊO�̃^�u��\��
(require 'cl)
 (when (require 'tabbar nil t)
    (setq tabbar-buffer-groups-function
	  (lambda (b) (list "All Buffers")))
    (setq tabbar-buffer-list-function
          (lambda ()
            (remove-if
             (lambda(buffer)
               (find (aref (buffer-name buffer) 0) " *"))
             (buffer-list))))
    (tabbar-mode))

;; ���ɕ\�������{�^���𖳌���
(setq tabbar-home-button-enabled "")
(setq tabbar-scroll-left-button-enabled "")
(setq tabbar-scroll-right-button-enabled "")
(setq tabbar-scroll-left-button-disabled "")
(setq tabbar-scroll-right-button-disabled "")

;; �F�ݒ�
 (set-face-attribute
   'tabbar-default-face nil
   :background "gray90") ;�o�[���̂̐F
  (set-face-attribute ;��A�N�e�B�u�ȃ^�u
   'tabbar-unselected-face nil
   :background "gray90"
   :foreground "black"
   :box nil)
  (set-face-attribute ;�A�N�e�B�u�ȃ^�u
   'tabbar-selected-face nil
   :background "black"
   :foreground "white"
   :box nil)

;; ���ݒ�
  (set-face-attribute
   'tabbar-separator-face nil
   :height 0.7)

;; Firefox���C�N�ȃL�[�o�C���h��
(global-set-key [(control tab)]       'tabbar-forward)
(global-set-key [(control shift tab)] 'tabbar-backward)