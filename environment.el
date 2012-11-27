(if (boundp 'mvs-after-loads) (funcall mvs-after-loads))
(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)
(setq-default truncate-lines t)
(setq coffee-tab-width 4)
(setq default-tab-width 4)
(setq inhibit-splash-screen t)
(setq rspec-shell-name "*shell*")
(setq tab-width 4)
(setenv "PAGER" "cat")
(column-number-mode)
(global-linum-mode t)
(add-hook 'shell-mode-hook
          (lambda ()
            (setq tab-width 8)
            (shell-up-down-minor-mode)
            (ansi-color-for-comint-mode-on)))
(add-hook 'shell-dynamic-complete-functions
          'bash-completion-dynamic-complete)
(add-hook 'shell-command-complete-functions
          'bash-completion-dynamic-complete)
(if (boundp 'mvs-before-set-keyboard-mapping) (funcall mvs-before-set-keyboard-mapping))
(set-default-keyboard-mapping "mvs")
