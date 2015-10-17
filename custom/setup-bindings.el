;; Newline withouh break of line
(defun newline-without-break-of-line ()
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))

(global-set-key (kbd "<C-return>") 'newline-without-break-of-line)

;; Convinient...
(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-c f") 'find-file-other-window)
(global-set-key (kbd "C-c b") 'helm-bookmarks)

(global-set-key (kbd "C-å") 'elscreen-previous)
(global-set-key (kbd "C-ä") 'elscreen-next)

(provide 'setup-bindings)
