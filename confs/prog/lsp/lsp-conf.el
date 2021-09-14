(use-package lsp-mode
  :ensure t
  :diminish
  :hook ((python-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred)
  :config (setq lsp-prefer-flymake nil)
)

(use-package lsp-ui
  :ensure t
  :diminish
  :commands lsp-ui-mode
)

(use-package company
  :ensure t
  :diminish
  :hook (scala-mode . company-mode)
  :config (setq lsp-completion-provider :capf))

(use-package lsp-treemacs
  :ensure t
  :diminish)

(use-package lsp-ivy
  :ensure t
  :diminish
  :commands lsp-ivy-workspace-symbol)

(use-package scala-mode
  :mode ("\\.sc\\'" . scala-mode)
  :interpreter ("scala" . scala-mode)
;  :config
;    (general-create-definer daEmacs/scala-keys
;	:keymaps '(scala-mode-map)
;	:prefix ",")
;
;    (daEmacs/scala-keys
;     "g" '(:ignore t :which-key "go-to")
;     "gd" '(lsp-find-definition :which-key "go to definition")
;     "gr" '(lsp-find-references :which-key "show references")
;     "gx" '(xref-goto-xref :which-key "go to ref"))
  :general
  (global-leader
   :major-modes '(scala-mode)
   :keymaps '(scala-mode-map)
     "g" '(:ignore t :which-key "go-to")
     "gd" '(lsp-find-definition :which-key "go to definition"))
  )

(use-package sbt-mode
  :commands sbt-start sbt-command
    :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map)
   ;; sbt-supershell kills sbt-mode:  https://github.com/hvesalai/emacs-sbt-mode/issues/152
   (setq sbt:program-options '("-Dsbt.supershell=false"))
)

(use-package flycheck
  :init (global-flycheck-mode))


(use-package lsp-metals
  :ensure t
  :custom
  ;; Metals claims to support range formatting by default but it supports range
  ;; formatting of multiline strings only. You might want to disable it so that
  ;; emacs can use indentation provided by scala-mode.
  (lsp-metals-server-args '("-J-Dmetals.allow-multiline-string-formatting=off"))
  :hook (scala-mode . lsp))

(use-package yasnippet)

;; Use the Debug Adapter Protocol for running tests and debugging
(use-package posframe
  ;; Posframe is a pop-up tool that must be manually installed for dap-mode
  )
(use-package dap-mode
  :hook
  (lsp-mode . dap-mode)
  (lsp-mode . dap-ui-mode)
  )
