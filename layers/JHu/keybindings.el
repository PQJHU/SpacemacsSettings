;; 定义快捷键
(global-set-key (kbd "M-s o") 'occur-dwim)

(global-set-key (kbd "s-d") 'JHu/my-mc-mark-next-like-this)

(bind-key* "s-r" 'mc/reverse-regions)

;; 改变C-h
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "<f1>") 'help-command)
(define-key isearch-mode-map "\C-h" 'isearch-delete-char)









