;;;;
;;;; .emacs
;;;;  by KazaniAvali (2023)
;;;;
;;;; Primary init file: Load config files.
;;;;

;; Tell customize where to store its config.
(setq custom-file (concat user-emacs-directory ".emacs.el.d/" "customize.el"))

;; Add my custom require location for installing packages to
(add-to-list 'load-path "~/.emacs.d/elisp/")

;;;
;;; Load files in ~/.emacs.d/.emacs.el.d
;;;

(dolist
    (fname (directory-files "~/.emacs.d/.emacs.el.d"))
  (if
      (not (or
            (file-directory-p (concat "~/.emacs.d/.emacs.el.d/" fname))
            (s-contains-p "~" fname)))
      (load-file (concat "~/.emacs.d/.emacs.el.d/" fname))))

;;;
;;; Initialize package manager
;;;

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; adobe helvetica is an okay font.
