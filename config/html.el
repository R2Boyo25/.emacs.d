;;;;
;;;; html.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Config for HTML editing.
;;;;

;; Alias .html.tera (Rocket templates) to .html
(add-to-list 'auto-mode-alist '("\\.html\\.tera$" . html-mode))

;;; Emmet mode

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(setq emmet-move-cursor-between-quotes t) ;; default nil
