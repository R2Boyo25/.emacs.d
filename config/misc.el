;;;;
;;;; misc.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Generic configuration that doesn't warrant a separate file.
;;;;

;;; Company mode
(add-hook 'after-init-hook 'global-company-mode)

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

;; Parenthesis. Please.
(show-paren-mode 1)

(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js-mode))
(add-to-list 'auto-mode-alist '("\\.star\\'" . python-mode))
(setq dired-listing-switches "-alhD")

;; Neotree
(setq neo-smart-open t)

;(defun goto-first-reference () 
;  (interactive)
;  (eval 
;   `(progn
;      (goto-char (point-min))
;      (search-forward-regexp
;       (rx symbol-start ,(thing-at-point 'symbol) symbol-end))
;      (beginning-of-thing 'symbol))))

;(global-set-key (kbd "C-c g") 'goto-first-reference)

(global-set-key (kbd "C-c g") 'dumb-jump-go)
(global-set-key (kbd "C-c b") 'xref-go-back)

(defun goto-references ()
  (interactive)
  (eval 
   `(progn
      (occur (rx symbol-start ,(thing-at-point 'symbol) symbol-end)))))

(global-set-key (kbd "C-c G") 'goto-references)

;; Load EAF
;(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
;(require 'eaf)

;(require 'eaf-browser)
;(require 'eaf-pdf-viewer)

;(type-break-mode)

(setq eww-download-directory "/share/documents/downloads")

;; Fancy autocomplete menus
(ivy-mode 1)

(require 'gnus-notify)

;; Refresh email
(gnus-demon-add-handler 'gnus-group-get-new-news 5 t)
(gnus-demon-init)
