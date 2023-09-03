;;;;
;;;; appearance.el
;;;;  by KazaniAvali (2023)
;;;;
;;;; Appearance for Emacs.
;;;;

;(add-to-list 'default-frame-alist 'alpha '(90 . 75))
;(set-frame-parameter (selected-frame) 'alpha '(90 . 75))
;(set-frame-parameter nil 'alpha 70)

(powerline-default-theme)


;; Opacity

(set-frame-parameter (selected-frame) 'alpha '(93 93))
(add-to-list 'default-frame-alist '(alpha 93 93))

;; Display time in mode-line
(setq display-time-string-forms '((concat " " 24-hours ":" minutes " ")))
(display-time-mode t)

;(setq prettify-symbols-alist
;      '(
;        ("lambda" . ?λ)
;        ("->" . ?→)
;        ("->>" . ?↠)
;        ("=>" . ?⇒)
;        ("map" . ?↦)
;        ("/=" . ?≠)
;        ("!=" . ?≠)
;        ("==" . ?≡)
;        ("<=" . ?≤)
;        (">=" . ?≥)
;        ("=<<" . ?=≪)
;        (">>=" . ?≫=)
;        ("<=<" . ?↢)
;        (">=>" . ?↣)
;        ("&&" . ?∧)
;        ("||" . ?∨)
;        ("not" . ?¬)
;        )
;      )

(ligature-set-ligatures 'prog-mode '("<---" "<--"  "<<-" "<-" "->" "-->" "--->" "<->" "<-->" "<--->" "<---->" "<!--"
                                       "<==" "<===" "<=" "=>" "=>>" "==>" "===>" ">=" "<=>" "<==>" "<===>" "<====>" "<!---"
                                       "<~~" "<~" "~>" "~~>" "::" ":::" "==" "!=" "===" "!=="
                                       ":=" ":-" ":+" "<*" "<*>" "*>" "<|" "<|>" "|>" "+:" "-:" "=:" "<******>" "++" "+++"))
