(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

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

;; Enable `org-indent-mode' by default
(with-eval-after-load 'org
  (setq org-startup-indented t))

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
