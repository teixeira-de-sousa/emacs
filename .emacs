;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(setq visible-bell 1)
(tool-bar-mode 0)
(toggle-scroll-bar 0)
(ido-mode 1)
(transient-mark-mode 1)
(beacon-mode 1)
(setq make-backup-files nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(add-to-list 'load-path
	     "~/tools/emacs_load/")

(setq backup-directory-alist `(("." . "~/.saves")))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'multiple-cursors)
(global-set-key (kbd "C-C") 'mc/edit-beginnings-of-lines) 
(global-set-key (kbd "C-M-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C->") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-<") 'mc/mark-next-like-this)

(require 'expand-region)
(global-set-key (kbd "C-+") 'er/expand-region)
 
(require 'ace-mc)
(global-set-key (kbd "C-*") 'ace-mc-add-multiple-cursors)
(global-set-key (kbd "C-M-*") 'ace-mc-add-single-cursor)

(require 'ace-jump-mode)
(global-set-key (kbd "C-.") 'ace-jump-line-mode)
(global-set-key (kbd "C-;") 'ace-jump-word-mode)
(global-set-key (kbd "C-M-;") 'ace-jump-char-mode)

(require 'move-text)
(move-text-default-bindings)

(require 'smooth-scrolling)
(setq mouse-wheel-scroll-amount '(5 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
(setq scroll-margin 10)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(busybee))
 '(custom-safe-themes
   '("45feb1f130c54e0fc116faa71c784562b41009ffc908cf5cef06b6df4bb60a9a" default))
 '(package-selected-packages
   '(beacon busybee-theme ace-jump-mode ace-mc move-text multiple-cursors org-bullets smex smooth-scrolling expand-region)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
