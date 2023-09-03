;;;;
;;;; rust.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Rust configuration.
;;;;

(require 'rust-mode)

(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

(setq rust-format-on-save t)

(setenv "CARGO_TARGET_DIR" "/home/kazani/.cache/cargo-builds/")
