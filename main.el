
(defun daEmacs/load-confs ()
  (load "~/.daEmacs/confs/standard/conf.el")
  (load "~/.daEmacs/confs/keyboard/conf.el")
  (load "~/.daEmacs/confs/ui/conf.el")
  (load "~/.daEmacs/confs/evil/evil-conf.el")
  (load "~/.daEmacs/confs/counsel/counsel-conf.el")
  (load "~/.daEmacs/confs/ivy/ivy-conf.el")
  (load "~/.daEmacs/confs/prog/conf.el")
)



;; (defun daEmacs/load-confs
;;     ;; load all of the config files that are in the input dir that end in .el
;;     (root-dir ordered-packages)
;;   (let* (
;; 	    ;; get all config files
;; 	 (configs (directory-files-recursively root-dir ".+\\.el$"))
;; 	 (configs-not-ordered ())
;; 
;; 	    ;; get filter out and order the ones that match the ordered input
;; 	 )
;;     (dolist (file ordered-packages)
;;       (load
;;        (seq-filter (lambda (x) (string-match file x)) files)))
;; 
;;     
;;     (dolist (conf-file configs)
;;       (load conf-file))))

(daEmacs/load-confs )

