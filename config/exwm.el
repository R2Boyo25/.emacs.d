;;;;
;;;; exwm.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Configuration for EXWM.
;;;;

(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)

;; Set the initial workspace number.
(unless (get 'exwm-workspace-number 'saved-value)
  (setq exwm-workspace-number 4))
;; Make class name the buffer name
(add-hook 'exwm-update-class-hook
          (lambda ()
            (exwm-workspace-rename-buffer exwm-class-name)))

(require 'cycle-buffer)

;; Global keybindings.
(unless (get 'exwm-input-global-keys 'saved-value)
  (setq exwm-input-global-keys
        `(
          ;; 's-r': Reset (to line-mode).
          ([?\s-r] . exwm-reset)
          ;; 's-w': Switch workspace.
          ([?\s-w] . exwm-workspace-switch)
          ;; 's-&': Launch application.
          ([?\s-&] . (lambda (command)
                       (interactive (list (read-shell-command "$ ")))
                       (start-process-shell-command command nil command)))
          ([s-iso-lefttab] . cycle-buffer-backward)
          ([s-tab] . cycle-buffer)
          ;; 's-N': Switch to certain workspace.
          ,@(mapcar (lambda (i)
                      `(,(kbd (format "s-%d" i)) .
                        (lambda ()
                          (interactive)
                          (exwm-workspace-switch-create ,i))))
                    (number-sequence 0 9)))))
;; Line-editing shortcuts
(unless (get 'exwm-input-simulation-keys 'saved-value)
  (setq exwm-input-simulation-keys
        '(([?\C-b] . [left])
          ([?\C-f] . [right])
          ([?\C-p] . [up])
          ([?\C-n] . [down])
          ([?\C-a] . [home])
          ([?\C-e] . [end])
          ([?\M-v] . [prior])
          ([?\C-v] . [next])
          ([?\C-d] . [delete])
          ([?\C-k] . [S-end delete]))))

;(exwm-input-set-key (kbd "<S-f1>") 'cycle-buffer-backward)
;(exwm-input-set-key (kbd "<S-f2>") 'cycle-buffer)

;; Enable EXWM
(exwm-enable)
;; Configure Ido
(exwm-config-ido)
;; Other configurations
(exwm-config-misc)

;; Workspace mapping for multiple monitors.
(setq exwm-randr-workspace-output-plist '(0 "VGA1"))
(setq exwm-randr-workspace-monitor-plist '(2 "HDMI-A-0" 3 "HDMI-A-0"))
(exwm-randr-enable)

;; Move mouse when switching workspaces.
(setq exwm-workspace-warp-cursor t)

(global-set-key (kbd "S-s-w") 'exwm-workspace-move-window)

;; char mode by default.
(setq exwm-manage-configurations '((t char-mode t)))

