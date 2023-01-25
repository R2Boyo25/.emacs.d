;;;;
;;;; misc.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Generic configuration that doesn't warrant a separate file.
;;;;

;; Disable annoying lockfiles which break on SSHFS & Samba.
(setq create-lockfiles nil)

;; SPACES. NOT. TABS.
(setq-default indent-tabs-mode nil)

;; Prevent eshell from closing ansi-term buffers when
;; a visual process closes
(setq eshell-destroy-buffer-when-process-dies nil)

;; Dark mode :)
(defvar frame-background-mode "dark")

;; Guile load path for my user
(setenv "GUILE_LOAD_PATH" "~/.local/share/guile/")
