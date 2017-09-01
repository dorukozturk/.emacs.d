(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

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

(use-package ag
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package projectile
  :ensure t
  :config (progn
            (setq projectile-completion-system 'ivy
                  projectile-require-project-root nil
                  projectile-track-known-projects-automatically nil)

            (projectile-mode)))

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

(use-package zenburn-theme
  :ensure t
  :init (load-theme 'zenburn t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key f ag helm-ag helm-projectile helm zenburn-theme projectile ivy magit use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
