(if (boundp 'mvs-after-loads) (funcall mvs-after-loads))
(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)
(setq-default truncate-lines t)
(setq coffee-tab-width 4)
(setq default-tab-width 4)
(setq inhibit-splash-screen t)
(setq rspec-shell-name "*shell*")
(setq tab-width 4)
(setq sass-indent-offset 4)
(setq-default fill-column 80)
(setenv "PAGER" "cat")
(column-number-mode)
(global-linum-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode))
(add-hook 'shell-mode-hook
          (lambda ()
            (linum-mode 0)
            (setq tab-width 8)
            (shell-up-down-minor-mode)
            (ansi-color-for-comint-mode-on)))
(add-hook 'shell-dynamic-complete-functions
          'bash-completion-dynamic-complete)
(add-hook 'shell-command-complete-functions
          'bash-completion-dynamic-complete)
(add-hook 'before-save-hook 'delete-trailing-whitespace-except-markdown-files)
(defun delete-trailing-whitespace-except-markdown-files ()
  (when (not (string= (file-name-extension buffer-file-name) "md"))
    (delete-trailing-whitespace)))
(defcustom mvs-font "Droid Sans Mono 12"
  "The default global font"
  :type 'string
  :group 'mvs)
(set-default-font mvs-font)
(setq backup-directory-alist `(("." . "~/.saves")))
(rvm-use-default)
(if (boundp 'mvs-load-snippets) (load (concat (file-name-directory load-file-name) "yasnippet-environment.el")))
