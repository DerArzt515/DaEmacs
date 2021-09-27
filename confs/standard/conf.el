(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize)
(package-refresh-contents)

 (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure 't)


(setq inhibit-startup-message t cursor-type 'bar)
(setq ring-bell-function 'ignore)
(setq visual-bell t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 10)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


(setq make-backup-files nil)


(load "~/.daEmacs/confs/standard/general/general-conf.el")
(load "~/.daEmacs/confs/standard/helpful/helpful-conf.el")
(load "~/.daEmacs/confs/standard/which-key/which-key-conf.el")
(load "~/.daEmacs/confs/standard/projectile/projectile-conf.el")
(load "~/.daEmacs/confs/standard/magit/magit-conf.el")
(load "~/.daEmacs/confs/standard/term/term-conf.el")
(load "~/.daEmacs/confs/standard/org/org-conf.el")
