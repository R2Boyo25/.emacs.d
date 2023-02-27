;;;;
;;;; .emacs
;;;;  by KazaniAvali (2023)
;;;;
;;;; Primary init file: Load config files.
;;;;

(setq emacsdir user-emacs-directory)
(setq initdir (concat emacsdir "/config/"))

;; Tell customize where to store its config.
(setq custom-file (concat initdir "customize.el"))

;; Add my custom require location for installing packages to
(add-to-list 'load-path (concat emacsdir "elisp/"))

;;;
;;; Load files in ~/.emacs.d/.emacs.el.d
;;;

(dolist
    (fname (directory-files initdir))
  (if
      (not (or
            (file-directory-p (concat initdir fname))
            (string-match-p (regexp-quote "~") fname)))
      (load-file (concat initdir fname))))

;;;
;;; Initialize package manager
;;;

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; adobe helvetica is an okay font.

(message "Custom configuration has been loaded! :)")
