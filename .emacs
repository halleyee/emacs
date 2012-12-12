(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-matching-delay 0.5)
 '(ede-project-directories (quote ("e:/proj/client/gfxip_gfx8")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-echo-area-message "hosu")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(iswitchb-max-to-show 4)
 '(iswitchb-mode t)
 '(make-backup-files nil)
 '(org-agenda-files (quote ("~/GTD.org")))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Lucida Sans Typewriter")))))
;; ;; **********************************************************************
   ;; key binding
   ;; ===========
;; (global-set-key "\M-]" 'scroll-up)
;; (global-set-key "\M-[" 'scroll-down)
(define-key global-map "\C-cf" 'find-file-at-point)
(define-key global-map "\C-cr" 'revert-buffer)
(define-key global-map "\C-cl" 'toggle-truncate-lines)
(define-key global-map "\C-ck" 'kill-this-buffer)
(global-set-key [?\C-`] 'set-mark-command)
(define-key ctl-x-map "\C-b" 'ibuffer)
;;;; ************************************************************
;;;; yasnippet
(add-to-list 'load-path "c:/msys/1.0/home/hosu/.emacs.d")
(require 'yasnippet)
(add-hook 'c++-mode-hook
          '(lambda ()
             (yas/initialize)
             (yas/load-directory "c:/msys/1.0/home/hosu/.emacs.d/snippets"))
          t)
(add-hook 'c-mode-hook
          '(lambda ()
             (yas/initialize)
             (yas/load-directory "c:/msys/1.0/home/hosu/.emacs.d/snippets"))
          t)
(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map "\C-ca" 'org-agenda)
;;             (define-key org-mode-map "\C-cm" 'org-remember)
             (define-key org-mode-map "\C-cc" 'org-capture)
;;             (org-remember-insinuate)
             )
          t)
(setq org-capture-templates
      '(("t" "Todo" entry (id "TASK") "* TODO %?%t")
        ("j" "Journal" entry (file+datetree "~/journal.org") "* %?\n%U\n%i\n%a")
        ))
(setq org-refile-targets (quote (("someday.org" :level . 2)
                                 ("GTD.org" :maxlevel . 1) 
                                 )))
;; (require 'color-theme)
;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;; ;;     (color-theme-dark-blue2)
;; ;;     (color-theme-ir-black)
;;      (color-theme-bharadwaj-slate)
;; ))
;; (require 'color-theme-irblack-2)
(add-to-list 'auto-mode-alist '("\\.dv$" . m4-mode))
;;(server-start)
(require 'git)
(require 'git-blame)
(require 'cparen)
(cparen-activate)
;; (add-to-list 'load-path "c:/msys/1.0/home/hosu/.emacs.d/cedet/common")
;; (require 'cedet)
;; (require 'semantic-ia)
;; (global-ede-mode 1)
;; (semantic-load-enable-minimum-features)
;; (senator-minor-mode)
(require 'twiki)
