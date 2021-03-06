;; PACKAGE: elscreen
(elscreen-start)

;; Make each el-screen handle separate buffer lists
(require 'elscreen-separate-buffer-list)
(elscreen-separate-buffer-list-mode)

;; Create screen automatically when there is only one screen using C-z c-n e.g.
(defmacro elscreen-create-automatically (ad-do-it)
   (` (if (not (elscreen-one-screen-p))
          (, ad-do-it)
        (elscreen-create)
        (elscreen-notify-screen-modification 'force-immediately)
        (elscreen-message "New screen is automatically created"))))
 
 (defadvice elscreen-next (around elscreen-create-automatically activate)
   (elscreen-create-automatically ad-do-it))
 
 (defadvice elscreen-previous (around elscreen-create-automatically activate)
   (elscreen-create-automatically ad-do-it))
 
 (defadvice elscreen-toggle (around elscreen-create-automatically activate)
   (elscreen-create-automatically ad-do-it))

(provide 'setup-elscreen)
