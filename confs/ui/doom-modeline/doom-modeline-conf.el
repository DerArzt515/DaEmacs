(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-bar-width 4
	doom-modeline-project-detection 'auto
	doom-modeline-hud nil
	doom-modeline-lsp t
	doom-modeline-modal-icon t))
