(add-hook 'prog-mode-hook '(lambda ()
			     (display-line-numbers-mode)
			     (column-number-mode)
			     (setq truncate-lines t
				   word-wrap nil)))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(load "~/.daEmacs/confs/prog/elisp/elisp-conf.el")
(load "~/.daEmacs/confs/prog/python/python-conf.el")
(load "~/.daEmacs/confs/prog/lsp/lsp-conf.el")
