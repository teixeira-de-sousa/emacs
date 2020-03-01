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

(add-to-list 'custom-theme-load-path
	     '"~/.emacs.d/ripped-theme/")

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(add-to-list 'load-path
	     "~/tools/emacs_load/")

(setq backup-directory-alist `(("." . "~/.saves")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#32302F" "#FB4934" "#B8BB26" "#FABD2F" "#83A598" "#D3869B" "#17CCD5" "#EBDBB2"])
 '(custom-enabled-themes (quote (busybee)))
 '(custom-safe-themes
   (quote
    ("ab98c7f7a58add58293ac67bec05ae163b5d3f35cddf18753b2b073c3fcd8841" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "6343f4d41b209fe8990e3c5f4d2040b359612ef9cd8682f1e1e2a836beba8107" "4e5e58e42f6f37920b95a8502f488928b3dab9b6cc03d864e38101ce36ecb968" "88049c35e4a6cedd4437ff6b093230b687d8a1fb65408ef17bfcf9b7338734f6" "ebd9bea137cafba0138f5a6996aa6851c4ee8263844c75a57798faacbcf8e3e4" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" default)))
 '(minimap-hide-fringes t)
 '(minimap-update-delay 0)
 '(minimap-width-fraction 0.1)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
    (auto-complete-c-headers haskell-mode haskell-tab-indent ac-html theme-magic smooth-scrolling magit move-text ace-mc ace-jump-mode expand-region js-comint nodejs-repl ac-c-headers ac-clang ac-js2 js2-mode pdf-view-restore org-lookup-dnd org-pdfview busybee-theme railscasts-reloaded-theme railscasts-theme minimap beacon speed-type multiple-cursors sourcerer-theme ox-twbs org-plus-contrib org smex)))
 '(pdf-view-midnight-colors (quote ("#FDF4C1" . "#282828")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8"))

;; (custom-set-faces
;;   '(minimap-active-region-background
;;     ((((background dark)) (:background "#5a5a5a222222"))
;;       (t (:background "#D3D3D3222222")))
;;     "Face for the active region in the minimap.
;; By default, this is only a different background color."
;;     :group 'minimap))

(require 'js2-mode)
(add-hook 'js2-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
            (local-set-key (kbd "C-c b") 'js-send-buffer)))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'theme-magic)
(theme-magic-export-theme-mode)

 (add-hook 'prog-mode-hook 'hs-minor-mode)
;; (add-hook 'prog-mode-hook 'minimap-mode)

(defun tilde ()
  (interactive)
  (insert "~"))
(global-set-key (kbd "<dead-tilde>") 'tilde)
(defun circumflex()
  (interactive)
  (insert "ˆ"))
(global-set-key (kbd "<dead-circumflex>") 'circumflex)
(defun acute()
  (interactive)
  (insert "´"))
(global-set-key (kbd "<dead-acute>") 'acute)
(defun grave()
  (interactive)
  (insert "`"))
(global-set-key (kbd "<dead-grave>") 'grave)

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-1"))
(global-unset-key (kbd "C-2"))
(global-unset-key (kbd "C-3"))
(global-unset-key (kbd "C-4"))
(global-unset-key (kbd "C-5"))
(global-unset-key (kbd "C-6"))
(global-unset-key (kbd "C-7"))
(global-unset-key (kbd "C-8"))
(global-unset-key (kbd "C-9"))
(global-unset-key (kbd "C-0"))

(global-set-key (kbd "C-1") 'hs-toggle-hiding)
(global-set-key (kbd "C-M-1") 'hs-hide-all)
(global-set-key (kbd "C-M-!") 'hs-show-all)

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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
