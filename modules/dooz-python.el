(use-package anaconda-mode
  :ensure t
  :config
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))

(use-package virtualenvwrapper
  :ensure t
  :config(setq venv-location "/home/dorukozturk/Envs/"))

(provide 'dooz-python)
