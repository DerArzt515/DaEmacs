(use-package magit
  :ensure t
  :config
  (daEmacs/leader-keys
    "g" '(:ignore t :which-key "git")
    "gs" '(magit-status :which-key "status")))
