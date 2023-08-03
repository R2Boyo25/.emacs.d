;;;;
;;;; init.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Primary init file: Load config files.
;;;;

;(defvar bootstrap-version)
;(let ((bootstrap-file
;       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
;      (bootstrap-version 6))
;  (unless (file-exists-p bootstrap-file)
;    (with-current-buffer
;        (url-retrieve-synchronously
;         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
;         'silent 'inhibit-cookies)
;      (goto-char (point-max))
;      (eval-print-last-sexp)))
;  (load bootstrap-file nil 'nomessage))

;; Disable BIOS beeping
(add-to-list 'after-make-frame-functions (lambda (_) (shell-command "xset b off")))

(setq emacsdir user-emacs-directory)
(setq initdir (concat emacsdir "/config/"))

;; Tell customize where to store its config.
(setq custom-file (concat initdir "customize.el"))

;;;
;;; Initialize package manager
;;;

(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(load-file (concat initdir "customize.el"))
;(package-refresh-contents)
;(package-install-selected-packages)

;; Add my custom require location for installing packages to
(add-to-list 'load-path (concat emacsdir "elisp/"))
(add-to-list 'load-path (concat emacsdir "modules/"))

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

;; adobe helvetica is an okay font.

(message "Custom configuration has been loaded! :)")
