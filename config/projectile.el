;;;;
;;;; projectile.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Configuration for Projectile and NeoTree.
;;;;
;;;  Source: https://www.emacswiki.org/emacs/NeoTree

(setq projectile-switch-project-action 'neotree-projectile-action)

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(global-set-key [f8] 'neotree-project-dir)

(setq projectile-project-search-path '("~" ("/share/projects" . 3)))
(setq projectile-completion-system 'ivy)
