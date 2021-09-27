(use-package org
  :ensure t
  :custom
  (setq org-hide-emphasis-markers t)
  (custom-theme-set-faces
     'user
     `(org-level-8 ((t (,@headline ,@variable-tuple))))
     `(org-level-7 ((t (,@headline ,@variable-tuple))))
     `(org-level-6 ((t (,@headline ,@variable-tuple))))
     `(org-level-5 ((t (,@headline ,@variable-tuple))))
     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))

(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/RoamNotes")
  (org-roam-completion-everywhere t)
  :config
  (org-roam-setup)
  (daEmacs/leader-keys
    "n" '(:ignore t :which-key "Notes")
    "nr" '(:ignore t :which-key "roam")
    "nrr" '(org-roam-buffer-toggle :which-key "toggle roam buffer")
    "nrf" '(org-roam-node-find :which-key "find")
    "nri" '(org-roam-node-insert :which-key "insert"))
)

(use-package org-superstar
  :after org
  :hook (org-mode . org-superstar-mode)
  :custom
  ;(org-superstar-remove-leading-stars t)
    (setq org-hide-leading-stars nil)
    ;; This line is necessary.
    (setq org-superstar-leading-bullet ?\s)
    ;; If you use Org Indent you also need to add this, otherwise the
    ;; above has no effect while Indent is enabled.
    (setq org-indent-mode-turns-on-hiding-stars nil)
  (org-superstar-headline-bullets-list '("●" "◉" "○" "▶" "▷" "▸")))

;; Increase the size of various headings
(set-face-attribute 'org-document-title nil :font "Cabin" :weight 'bold :height 2)
(dolist (face '((org-level-1 . 1.2)
                (org-level-2 . 1.1)
                (org-level-3 . 1.05)
                (org-level-4 . 1.0)
                (org-level-5 . 1.1)
                (org-level-6 . 1.1)
                (org-level-7 . 1.1)
                (org-level-8 . 1.1)))
  (set-face-attribute (car face) nil :font "Cabin" :weight 'medium :height (cdr face)))

;; Make sure org-indent face is available
(require 'org-indent)

;; Ensure that anything that should be fixed-pitch in Org files appears that way
(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
(set-face-attribute 'org-table nil  :inherit 'fixed-pitch)
(set-face-attribute 'org-formula nil  :inherit 'fixed-pitch)
(set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-indent nil :inherit '(org-hide fixed-pitch))
(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)

