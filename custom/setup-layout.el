;; DESC: Create a minimalistic window
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; FONT
(set-default-font
 "-apple-inconsolata-medium-r-normal--14-130-72-72-m-130-iso10646-1")

;; Turn that beep off!!
(setq ring-bell-function 'ignore)

;; DESC: Do not open stanard startscreen
(setq inhibit-startup-message t)

;; POWERLINE
(require 'powerline)
(powerline-nano-theme)
;; (custom-set-faces
;;  '(mode-line ((t (:foreground "Black" :background "DarkOrange" :box nil))))
;;  '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))



;; THEME
;; Moe-theme
;; (require 'moe-theme)

;; Show highlighted buffer-id as decoration. (Default: nil)
;; (setq moe-theme-highlight-buffer-id t)

;; Choose a color for mode-line.(Default: blue)
;; (moe-theme-set-color 'cyan)

;; Finally, apply moe-theme now.
;; Choose what you like, (moe-light) or (moe-dark)
;; (moe-light)

;; THEME
(load-theme 'monokai t)
;; (load-theme 'zenburn t)

(provide 'setup-layout)
