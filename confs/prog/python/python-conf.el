(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python3" . python-mode))

(general-create-definer daEmacs/python-keys
  :keymaps '(python-mode-map)
  :prefix ",")

(daEmacs/python-keys
 "q" '(:ignore t :which-key "qtile")
 "qq" '(evil-save :which-key "save"))
