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

(use-package dooz-theme
  :load-path "modules/")

(use-package dooz-helm
  :load-path "modules/")

(use-package dooz-projectile
  :load-path "modules/")

(use-package dooz-python
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

(use-package dumb-jump
  :ensure t
  :bind (("M-g ." . dumb-jump-go)
         ("M-g ," . dumb-jump-back))
  :config (progn
            (setq dumb-jump-selector 'ivy
                  dumb-jump-aggressive nil)))

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
