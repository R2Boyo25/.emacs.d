;;;;
;;;; cpp.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; C++ LSP w/ Clangd using eglot.
;;;;

(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
