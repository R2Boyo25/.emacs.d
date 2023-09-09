;;;;
;;;; startup.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Configuration for the startup screen / dashboard.
;;;;

(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))

(setq dashboard-banner-logo-title "Hewwo!")
(setq dashboard-startup-banner 'logo)
(setq dashboard-center-content t)
(setq dashboard-items '((recents  . 10)
                        (bookmarks . 5)
                        (projects . 20)
                        (agenda . 15)))
(setq dashboard-set-init-info nil)

(setq dashboard-set-navigator t)


(setq dashboard-filter-agenda-entry 'dashboard-no-filter-agenda)

(setq dashboard-icon-type 'all-the-icons)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

(setq dashboard-agenda-sort-strategy '(time-up))
(setq dashboard-filter-agenda-entry 'dashboard-filter-agenda-by-todo)
(setq dashboard-footer-messages '("Where's your Oxford comma?"
                                  "🚀 Blazingly safe 🔥 and memory fast! 🚀"
                                  "SIGSEGV: Segmentation Fault"))
