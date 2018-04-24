;;; Mario's .emacs file
;; Mario R Naranjo
;; 02-02-2018

;;;This section is added from idk where buts its working...
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/org/work.org" "~/org/school.org" "~/org/home.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; This section was added while working through the tutorial found at
;; https://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-cb" 'org-iswitchb)
(setq org-agenda-files (list "~/org/work.org"
			     "~/org/school.org"
			     "~/org/home.org"))
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d)")
	(sequence "WAITING(w)" "|" "CANCELED(c)")))
;; added 2018/03/02
;; https://orgmode.org/worg/org-tutorials/org-latex-export.html
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
	       ("\\section{%s}"."\\section*{%s}")
	       ("\\subsection{%s}"."\\subsection*{%s}")
	       ("\\subsubsection{%s}"."\\subsubsection*{%s}")
	       ("\\paragraph{%s}"."\\paragraph*{%s}")))
(add-to-list 'org-latex-classes
             '("koma-article"
               "\\documentclass{scrartcl}"
	       ("\\section{%s}"."\\section*{%s}")
	       ("\\subsection{%s}"."\\subsection*{%s}")
	       ("\\subsubsection{%s}"."\\subsubsection*{%s}")
	       ("\\paragraph{%s}"."\\paragraph*{%s}")
	       ("\\subparagraph{%s}"."\\subparagraph*{%s}")))
  
;;;All entries in this section are ones I've defined
(setq-default fill-column 80)
;;2018/03/05
(setq org-format-latex-options
      (plist-put org-format-latex-options :scale 1.50))
(setq column-number-mode t)
