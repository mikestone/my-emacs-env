(defun remote-load (url)
  "Remotely load the given url"
  (let* ((remote-buffer (url-retrieve-synchronously url)))
    (switch-to-buffer remote-buffer)
    (goto-char (point-min))
    (re-search-forward "^$" nil 'move)
    (delete-region (point-min) (1+ (point)))
    (eval-buffer)
    (kill-buffer remote-buffer)))

(remote-load "https://raw.github.com/defunkt/coffee-mode/master/coffee-mode.el")
(remote-load "https://raw.github.com/on-site/emacs_utils/master/edit-utils.el")
(remote-load "https://raw.github.com/on-site/emacs_utils/master/new-shell.el")
(remote-load "https://raw.github.com/on-site/emacs_utils/master/rails-nav.el")
(remote-load "https://raw.github.com/on-site/emacs_utils/master/run-rspec.el")
(remote-load "https://raw.github.com/szermatt/emacs-bash-completion/master/bash-completion.el")
(remote-load "https://raw.github.com/nex3/haml-mode/master/haml-mode.el")
(remote-load "https://raw.github.com/nex3/sass-mode/master/sass-mode.el")
(remote-load "https://raw.github.com/smellsblue/my-emacs-env/master/environment.el")
;; This won't work unless I can load color theme remotely first.
;; (remote-load "https://raw.github.com/smellsblue/my-emacs-env/master/remote-appearance.el")
