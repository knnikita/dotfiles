;; https://raw.githubusercontent.com/integral-dw/org-bullets/master/org-bullets.el
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Wrap a line at 80 colulmns
(add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))
(add-hook 'org-mode-hook 'turn-on-auto-fill)
(require 'org)
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(n)" "NEXT(x)" "WAITING(w)" "CANCELLED(c)" "SOMEDAY(s)" "DONE(d)")))

;; Setup a selection background (C-SPC or C-@)
(set-face-attribute 'region nil :background "#666")
(setq org-agenda-files '("~/.saves/org/agenda.org"))
(setq backup-directory-alist `(("." . "~/.saves")))
(setq default-tab-width 4)
;; Break line between headlines
(setf org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))
;; Setup a key bind for the agenda
(global-set-key (kbd "C-c a") 'org-agenda)
;; to create a alphabetical lists 
(setq org-list-allow-alphabetical t)
;; to keep track of when a certain TODO item was marked as done
(setq org-log-done t)
;; Enable intents after RET 
(setq org-adapt-indentation t)

;; ???
;;(define-key global-map "\C-cl" 'org-store-link)

;; Setup C-c c to capture new TODOs
(global-set-key (kbd "C-c c") 'org-capture)

(load-theme 'tsdh-dark t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/org/eng.org" "/Users/nikitaknyzhov/org/journal.org" "/Users/nikitaknyzhov/.saves/org/agenda.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
