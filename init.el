(define-key global-map "\C-z" 'undo)
(define-key global-map "\C-q" 'kill-ring-save)
(define-key global-map "\C-h" `delete-backward-char)
;(define-key global-map "\C-i" 'isearch-forward)
;(define-key global-map "\C-s" 'save-buffer)
(setq make-backup-files nil)
(setq auto-save-default nil)
(add-hook 'shell-mode-hook
          '(lambda ()
             (progn
               ;; (define-key shell-mode-map (kbd "C-p") 'comint-previous-input)
               ;; (define-key shell-mode-map (kbd "C-n") 'comint-next-input)
               (define-key shell-mode-map (kbd "C-p") 'comint-previous-matching-input-from-input)
               (define-key shell-mode-map (kbd "C-n") 'comint-next-matching-input-from-input)
               )))
(setq-default tab-width 4 indent-tabs-mode nil)
;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)
;(global-linum-mode t)
