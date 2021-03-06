(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(semantic-mode 1)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(setq epg-gpg-program "/usr/bin/gpg")

(use-package dooz-theme
  :load-path "modules/")

(use-package dooz-helm
  :load-path "modules/")

(use-package dooz-projectile
  :load-path "modules/")

(use-package dooz-python
  :load-path "modules/")

(use-package dooz-crypt
  :load-path "modules/")

(use-package dooz-chords
  :load-path "modules/")

(use-package dooz-jupyter
  :load-path "modules/")

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package ivy
  :ensure t)

(use-package ag
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package git-timemachine
  :ensure t)

(use-package company
  :ensure t
  :config (global-company-mode))

(use-package yaml-mode
  :ensure t)

(use-package jinja2-mode
  :ensure t)

(use-package expand-region
  :ensure t
  :bind ("C-q" . er/expand-region))

(use-package restclient
  :ensure t)

(use-package terraform-mode
  :ensure t)

(use-package tldr
  :ensure t)

(use-package flymake-python-pyflakes
  :ensure t
  :config
  (add-hook 'python-mode-hook 'flymake-python-pyflakes-load))

(use-package multiple-cursors
  :ensure t
  :bind (("C-c SPC" . set-rectangular-region-anchor)
         ("C->"     . mc/mark-next-like-this)
         ("C-<"     . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

(use-package dumb-jump
  :ensure t
  :bind (("M-g ." . dumb-jump-go)
         ("M-g ," . dumb-jump-back))
  :config (progn
            (setq dumb-jump-selector 'ivy
                  dumb-jump-aggressive nil)))

(use-package undo-tree
  :bind ("C-c u" . undo-tree-visualize)
  :ensure t
  :config (progn
            (custom-set-variables
             '(undo-tree-visualizer-timestamps t)
             '(undo-tree-visualizer-diff t))

            (global-undo-tree-mode))
  :diminish undo-tree-mode)

(use-package git-link
  :ensure t
  :config (progn
	    (custom-set-variables
	     '(git-link-open-in-browser t))))

(use-package markdown-mode
  :ensure t)

;; package is unmaintained
(use-package ansible-doc
  :ensure t
  :init (add-hook 'yaml-mode-hook 'ansible-doc-mode))

;; Enable `org-indent-mode' by default
(with-eval-after-load 'org
  (setq org-startup-indented t))

(use-package vlf
  :ensure t
  :config (progn
            (require 'vlf-setup)))

(use-package yasnippet
  :config
  (yas-reload-all)
  (yas-global-mode 1)
  (yas-load-directory "~/.emacs.d/snippets"))

(use-package helm-c-yasnippet
  :ensure t
  :bind (("C-c y" . helm-yas-complete)))

(use-package gist
  :ensure t)

(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq helm-yas-space-match-any-greedy t)
(setq flymake-python-pyflakes-executable "flake8")
(setq flymake-python-pyflakes-extra-arguments '("--max-line-length=120"))

(show-paren-mode 1)
(linum-mode 1)
(add-to-list 'exec-path "~/.local/bin/")
(setq browse-url-browser-function 'browse-url-chromium)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(setq require-final-newline t)
(setq projectile-track-known-projects-automatically t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ein:jupyter-default-server-command "/home/dorukozturk/.virtualenvs/nwb-numpy/bin/jupyter")
 '(git-link-open-in-browser t)
 '(helm-ag-ignore-patterns (quote ("*.ipynb")))
 '(package-selected-packages
   (quote
    (cmake-mode helm-dash inf-mongo wgrep-helm wgrep pug-mode tldr ein-subpackages ein-notebook ein-loaddefs ein emacs-ipython-notebook php-mode zenburn-theme yaml-mode which-key vlf virtualenvwrapper use-package undo-tree terraform-mode scala-mode restclient realgud multiple-cursors monokai-theme markdown-mode magit key-chord json-mode jinja2-mode ivy helm-projectile helm-c-yasnippet helm-ag git-timemachine git-link gist flymake-python-pyflakes flycheck expand-region dumb-jump dockerfile-mode company avy-menu ansible-doc anaconda-mode ag)))
 '(undo-tree-visualizer-diff t)
 '(undo-tree-visualizer-timestamps t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
