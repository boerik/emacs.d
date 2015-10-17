;; PACKAGE: flycheck (requires exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(add-hook 'after-init-hook #'global-flycheck-mode)

(flycheck-mode 1)

(provide 'setup-errorchecking)
