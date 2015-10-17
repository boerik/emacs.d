;; init.el
;; Boe emacs config file

(require 'setup-tweaks)                 ; If an error occour, at least we want this one loaded

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defconst demo-packages
  '(exec-path-from-shell
    ;; -- Interface Enhancement
    helm
    helm-swoop                          ; Navigation
    elscreen
    elscreen-separate-buffer-list
    ;; -- File Manager
    ;; -- Navigation
    anzu                                ; Isearch -> displays current/total matches
    ace-jump-mode
    ace-window
    ace-jump-helm-line
    ;; -- Project management
    ;; -- Programming
    smartparens
    duplicate-thing
    comment-dwim-2                      ; M-; : Comment line
    ws-butler
    volatile-highlights
    iedit
    symon                               ; system monitor
    ;; ---- Error checking
    flycheck
    ;; ---- Completion
    auto-complete
    auto-complete-c-headers
    yasnippet
    ;; -- Terminal
    multi-term
    elscreen-multi-term
    ;; -- LaTeX
    auctex
    ac-math
    auto-complete-auctex
    ;; -- Matlab
    matlab-mode
    ;; -- Themes
    moe-theme
    ahungry-theme
    grandshell-theme
    ample-zen-theme
    solarized-theme
    zenburn-theme
    hc-zenburn-theme
    monokai-theme
    )
)

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package demo-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-interface)
(require 'setup-editing)
(require 'setup-helm)                   ; helm & helm-swoop
(require 'setup-elscreen)
(require 'setup-programming)
(require 'setup-navigation)
(require 'setup-errorchecking)
(require 'setup-completion)
(require 'setup-term)
(require 'setup-layout)
(require 'setup-openfoam)
(require 'setup-latex)
(require 'setup-bindings)

(add-hook 'c-mode-common-hook 'openfoam-hgw-c-mode-hook)

