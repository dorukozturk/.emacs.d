(use-package projectile
  :ensure t
  :config (progn
            (setq projectile-completion-system 'ivy
                  projectile-require-project-root nil
                  projectile-track-known-projects-automatically nil)

            (projectile-mode)))

(provide 'dooz-projectile)
