;;;;
;;;; lsp.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Language server config.
;;;;

;; Currently disabled because it was annoying.
;; NVM but idk I might disable it again

(require 'lsp-mode)
(add-hook 'rust-mode-hook #'lsp-deferred)
