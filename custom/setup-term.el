;; PACKAGE: multi-term
(require 'multi-term)

(setq multi-term-dedicated-select-after-open-p t)
(setq multi-term-dedicated-skip-other-window-p t)
(setq multi-term-switch-after-close nil)
(setq multi-term-dedicated-close-back-to-open-buffer-p nil)

(global-set-key (kbd "C-c j") 'multi-term-dedicated-toggle)

(setq multi-term-program "/bin/bash")
(setenv "PATH" "/usr/local/texlive/:$PATH" t)

(global-set-key (kbd "C-c t") 'multi-term)

;; Custom
(add-hook 'term-mode-hook
  (lambda () 
    (define-key term-raw-map (kbd "C-c f") 'find-file-other-window)))

;; Load environment variables into Emacs
;; (exec-path-from-shell-copy-env "FOAM_APP")
;; (exec-path-from-shell-copy-env "FOAM_SRC")
;(exec-path-from-shell-copy-env "FOAM_SOLVERS")
;(exec-path-from-shell-copy-env "FOAM_TUTORIALS")
;(exec-path-from-shell-copy-env "FOAM_LIBBIN")
;(exec-path-from-shell-copy-env "FOAM_USER_LIBBIN")
;(exec-path-from-shell-copy-env "FOAM_APPBIN")
;(exec-path-from-shell-copy-env "FOAM_USER_APPBIN")
;; (exec-path-from-shell-copy-env "FOAM_RUN")
;; (exec-path-from-shell-copy-env "WMPUD")
;; (exec-path-from-shell-copy-env "WM_PROJECT_DIR")
;; (exec-path-from-shell-copy-env "WM_PROJECT_USER_DIR")


(provide 'setup-term)

