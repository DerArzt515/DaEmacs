(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (daEmacs/leader-keys
    "p" '(:ignore t :which-key "projectile")
    "po" '(projectile-command-map :which-key "Options")
    "pa" '(projectile-add-known-project :which-key "add project")

    "pp" '(projectile-switch-project :which-key "switch")
    "pc" '(projectile-compile-project :which-key "compile")
    "pt" '(projectile-test-project :which-key "test")

    "pf" '(:ignore t :which-key "find")
    "pff" '(projectile-find-file :which-key "file")
    )
  (setq projectile-globally-ignored-directories '(".bloop")
	projectile-completion-system 'ivy
	projectile-switch-project-action #'projectile-dired))

(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)


(use-package counsel-projectile
  :ensure t
  )
