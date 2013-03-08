;; grr to tilde files
(setq backup-directory-alist (list (cons "." "~/.emacs.d/saves")))
;; grr to pound files
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/saves/" t)))
