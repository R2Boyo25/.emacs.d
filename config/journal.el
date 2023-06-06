;;;;
;;;; journal.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Configuration or journaling with org-journal and org-agenda.
;;;;

(setq org-dir "~/Org/")
(setq org-journal-dir (concat org-dir "journal/"))
(setq org-agenda-files ())
(add-to-list 'org-agenda-files org-journal-dir)
(setq diary-file (concat org-dir "diary"))
(setq org-agenda-file-regexp "[^.].*\\.org\\|[0-9]+$")

(setq org-journal-date-prefix "#+TITLE: ")
(setq org-journal-date-format "%A, %B %d %Y")
(setq org-journal-time-prefix "* ")
(setq org-journal-time-format "")

(require 'org-journal)

(global-set-key (kbd "M-j") 'org-journal-new-entry)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
