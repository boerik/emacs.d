;; PACKAGE: comment-dwim-2
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; PACKAGE: ws-butler
(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)
(add-hook 'text-mode 'ws-butler-mode)
(add-hook 'fundamental-mode 'ws-butler-mode)

;; Activate Whitespace-mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; PACKAGE: memeber-function
(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "member-functions")
(require 'member-functions)
(setq mf--source-file-extension "cpp")

;; PACKAGE: smartparens
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

;; PACKAGE: iedit
(setq iedit-toggle-key-default nil)
(require 'iedit)
(global-set-key (kbd "C-;") 'iedit-mode)

;; PACKAGE: duplicate-thing
(require 'duplicate-thing)
(global-set-key (kbd "M-c") 'duplicate-thing)

;; PACKAGE: volatile-highlights
;; GROUP: Editing -> Volatile Highlights
(require 'volatile-highlights)
(volatile-highlights-mode t)

;; PACKAGE: undo-tree
;; GROUP: Editing -> Undo -> Undo Tree
(require 'undo-tree)
(global-undo-tree-mode)

;; ------------------------------------------
(electric-pair-mode 1)                  ;for brackets after functions
(provide 'setup-programming)
