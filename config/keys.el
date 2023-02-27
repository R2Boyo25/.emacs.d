;;;;
;;;; keys.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Generic keybindings.
;;;;

(global-set-key (kbd "C-M-t") (lambda () (interactive) (call-process-shell-command "mate-terminal &" nil 0)))
