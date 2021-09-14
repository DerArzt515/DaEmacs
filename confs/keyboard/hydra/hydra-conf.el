(use-package hydra
  :ensure t
  :diminish)

(defhydra hydra-zoom (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(daEmacs/leader-keys
  "ts" '(hydra-zoom/body :which-key "scale text"))
