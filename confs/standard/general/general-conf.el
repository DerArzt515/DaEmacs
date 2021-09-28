(use-package general
  :ensure t
  :config
  ;(general-evil-setup t)

  (general-create-definer daEmacs/leader-keys
			  :keymaps '(normal insert visual emacs)
			  :prefix "SPC"
			  :global-prefix "C-SPC")
			  )
(defun reload-conf-file ()
  "This is to reload the main config file for emacs"
  (interactive)
  (load "~/.emacs.d/init.el"))

;; This is stuff for enabling key bindings for major modes akin to
;; what spacemacs and doom do
;; ripped from: https://gist.github.com/progfolio/1c96a67fcec7584b31507ef664de36cc
(general-create-definer global-leader
  :keymaps 'override
  :states '(emacs normal hybrid motion visual operator)
  :prefix "SPC m"
  "" '(:ignore t :which-key "leader"))
  ;"" '(:ignore t :which-key (lambda (arg) `(,(cadr (split-string (car arg) " ")) . ,(replace-regexp-in-string "-mode$" "" (symbol-name major-mode))))))


(daEmacs/leader-keys
 "t" '(:ignore t :which-key "toggles")
 "tt" '(counsel-load-theme :which-key "choose theme")
 "b" '(:ignore t :which-key "buffers")
 "bb" '(counsel-switch-buffer :which-key "choose buffer")
 "bp" '(previous-buffer :which-key "previous buffer")
 "bn" '(next-buffer :which-key "next buffer")

 ;; WINDOWS
 "w" '(:ignore t :which-key "windows")
 "ws" '(evil-window-split :which-key "split to above & below")
 "w/" '(evil-window-vsplit :which-key "split to left and right")
 "wj" '(evil-window-down :which-key "go down")
 "wk" '(evil-window-up :which-key "go up")
 "wh" '(evil-window-left :which-key "go left")
 "wl" '(evil-window-right :which-key "go right")
 "q" '(:ignore t :which-key "system")
 "qr" '(reload-conf-file :which-key "reload main conf")
 "qq" '(evil-quit-all :which-key "exit emacs")

 "e" '(:ignore t :which-key "eval")
 "eb" '(eval-buffer :which-key "buffer")

 ;; FILES
 "f" '(:ignore t :which-key "files")
 "ff" '(counsel-find-file :which-key "find file")

 ;; Search
 "s" '(swiper :which-key "search current file")

 ;; COMMAND
 "SPC" '(counsel-M-x :which-key ":")
 "!" '(shell-command :which-key "Shell CMD"))
