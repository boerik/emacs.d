;; PACKAGE: anzu
;; GROUP: Editing -> Matching -> Isearch -> Anzu
(require 'anzu)
(global-anzu-mode)
(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-ö") 'ace-jump-mode)
(define-key global-map (kbd "M-ö") 'ace-jump-char-mode)
(define-key global-map (kbd "C-M-ö") 'ace-jump-line-mode)

(require 'ace-window)
(define-key global-map (kbd "C-'") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(defvar aw-dispatch-alist
'((?x aw-delete-window " Ace - Delete Window")
    (?m aw-swap-window " Ace - Swap Window")
    (?n aw-flip-window)
    (?v aw-split-window-vert " Ace - Split Vert Window")
    (?b aw-split-window-horz " Ace - Split Horz Window")
    (?i delete-other-windows " Ace - Maximize Window")
    (?o delete-other-windows))
"List of actions for `aw-dispatch-default'.")

(require 'ace-jump-helm-line)
(setq ace-jump-helm-line-use-avy-style nil)

(eval-after-load "helm"
  '(define-key helm-map (kbd "C-ö") 'ace-jump-helm-line))

;; toggle between c and h files
(add-hook 'c-mode-common-hook
  (lambda() 
    (local-set-key  (kbd "C-c C-'") 'ff-find-other-file)))

(provide 'setup-navigation)
