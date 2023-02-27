;;;;
;;;; exwm.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Configuration for EXWM.
;;;;

(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)

;; Load basic config
(exwm-config-example)

;; Workspace mapping for multiple monitors.
(setq exwm-randr-workspace-output-plist '(0 "VGA1"))
(setq exwm-randr-workspace-monitor-plist '(2 "HDMI-A-0" 3 "HDMI-A-0"))
(exwm-randr-enable)

;; Move mouse when switching workspaces.
(setq exwm-workspace-warp-cursor t)

(global-set-key (kbd "S-s-w") 'exwm-workspace-move-window)

;; char mode by default.
(setq exwm-manage-configurations '((t char-mode t)))
