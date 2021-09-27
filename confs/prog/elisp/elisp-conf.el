;;(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;;(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;;(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;;(add-hook 'ielm-mode-hook             #'enable-paredit-mode)

;;(add-hook 'emacs-lisp-mode-hook (lambda ()
;;				  (message "HELLO WORLD")
;;				  (daEmacs/leader-keys
;;				    "m" '(:ignore t :which-key "elisp-stuff")
;;				    "ms" '(evil-save :which-key "save")
;;				    )))

(use-package paredit
  :ensure t
  :hook emacs-lisp-mode
  :config (enable-paredit-mode)
  )
