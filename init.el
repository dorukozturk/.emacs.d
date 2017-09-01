(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package ivy
  :ensure t)

(use-package projectile
  :ensure t
  :config (progn
            (setq projectile-completion-system 'ivy
                  projectile-require-project-root nil
                  projectile-track-known-projects-automatically nil)

            (projectile-mode)))
