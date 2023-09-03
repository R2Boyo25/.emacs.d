;;;;
;;;; keys.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Generic keybindings.
;;;;

;(require 'evil)
;(evil-mode -1)

(global-set-key [f8]          'neotree-toggle)
(global-set-key (kbd "C-c c") 'projectile-compile-project)

(setq kitty-installed (file-exists-p "/usr/bin/kitty"))

(global-set-key (kbd "C-M-t") (lambda () (interactive) (call-process-shell-command (if kitty-installed "kitty&" "mate-terminal &") nil 0)))

; cycle string_inflection
(global-set-key (kbd "C-c s a") 'string-inflection-all-cycle)
(global-set-key (kbd "C-c s s") 'string-inflection-underscore)
(global-set-key (kbd "C-c s p") 'string-inflection-camelcase)
(global-set-key (kbd "C-c s c") 'string-inflection-lower-camelcase)
(global-set-key (kbd "C-c s u") 'string-inflection-upcase)
(global-set-key (kbd "C-c s k") 'string-inflection-kebab-case)
