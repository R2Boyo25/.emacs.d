;;;;
;;;; line-numbers.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Configure line numbers.
;;;;

(defcustom display-line-numbers-exempt-modes
  '(info-mode fundamental-mode help-mode completion-list-mode dired vterm-mode eshell-mode shell-mode term-mode ansi-term-mode)
  "Major modes on which to disable line numbers."
  :group 'display-line-numbers
  :type 'list
  :version "green")

(defun display-line-numbers--turn-on ()
  "Turn on line numbers except for certain major modes.
Exempt major modes are defined in `display-line-numbers-exempt-modes'."
  (unless (or (minibufferp)
              (member major-mode display-line-numbers-exempt-modes))
    (display-line-numbers-mode)))

;; Enable line numbers
(when (version<= "26.0.50" emacs-version )
  ;; Make line numbers relative
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode))
