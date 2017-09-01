(use-package helm
  :ensure t
  :demand t
  :bind (("C-c h" . helm-command-prefix)
         ("C-c l" . helm-locate)
         ("C-c f" . helm-find)
         ("C-x b" . helm-mini)
         ("C-x C-f" . helm-find-files)
         ("M-x" . helm-M-x)
         ("M-y" . helm-show-kill-ring)
         ("M-s o" . helm-occur))
  :config (helm-mode))

(use-package helm-ag
  :ensure t
  :bind(("C-c p s s" . helm-ag-project-root)))

(use-package helm-projectile
  :ensure t
  :config (helm-projectile-on))

(provide 'dooz-helm)
