;; DESC: path for backup-files
(setq backup-directory-alist `(("." . "~/.saves")))

;; DESC: 
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Keyboard edit for backslash on my Home mac
(when (eq system-type 'darwin)
  (setq mac-right-option-modifier 'none)
  )



(provide 'setup-tweaks)
