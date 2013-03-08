;; grr to tilde files
(setq backup-directory-alist (list (cons "." "~/.emacs.d/saves")))
;; grr to pound files
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/saves/" t)))

;; just say fuck no to tabs
(setq-default indent-tabs-mode nil)
;; no menu bar please
(menu-bar-mode -1)

(global-set-key (kbd "C-l") 'goto-line)

(defun backward-kill-line (arg)
  "Kill chars backward until encountering the end of a line."
  (interactive "p")
  (kill-line 0))
(global-set-key "\C-u" 'backward-kill-line)

(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key (kbd "C-c C-r") 'replace-regexp)
(global-set-key (kbd "C-c M-r") 'query-replace-regexp)

(defun kill-and-join-forward (&optional arg)
  (interactive "P")
  (if (and (eolp) (not (bolp)))
      (progn (forward-char 1)
	     (just-one-space 0)
	     (backward-char 1)
	     (kill-line arg))
    (kill-line arg)))
(global-set-key "\C-k" 'kill-and-join-forward)

(global-set-key (kbd "C-x w") 'delete-window)
(defun back-other-window (arg)
  (interactive "p")
  (other-window -1))
(global-set-key (kbd "C-x O") 'back-other-window)
