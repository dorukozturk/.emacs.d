(use-package helm
  :ensure t
  :bind(("M-x" . helm-M-x)
	("C-x f" . helm-find-files))
  :config (helm-mode))

(use-package helm-ag
  :ensure t
  :bind(("C-c p s s" . helm-ag-project-root)
	("C-s" . helm-do-ag-this-file)))

(use-package helm-projectile
  :ensure t
  :config (helm-projectile-on))

(provide 'dooz-helm)
