
;; -*- mode: lisp -*-

;; * Gestionnaire de paquets natif

;; This must come before configurations of installed packages.

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package)
	)

;; * Gestionnaire de paquets el-get

(add-to-list 'load-path "~/racine/plugin/manager/el-get/el-get")

(setq el-get-dir "~/racine/plugin/manager/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-user-package-directory "~/racine/config/edit/emacs/pack")
(add-to-list 'el-get-recipe-path "~/racine/plugin/data/el-get-user/recipes")

;; * Bindings

(global-unset-key (kbd "<f11>"))

(global-set-key (kbd "<f11> i") 'el-get-install)
(global-set-key (kbd "<f11> R") 'el-get-remove)
(global-set-key (kbd "<f11> s") 'el-get-self-update)
(global-set-key (kbd "<f11> u") 'el-get-update)
(global-set-key (kbd "<f11> U") 'el-get-update-all)
(global-set-key (kbd "<f11> r") 'el-get-reload)
(global-set-key (kbd "<f11> h") 'el-get-describe)
(global-set-key (kbd "<f11> l") 'el-get-list-packages)
(global-set-key (kbd "<f11> f") 'el-get-find-recipe-file)

;; * Liste de paquets installés

;; ** Nécessaire pour d’autres paquets

(el-get-bundle paredit)
(el-get-bundle ace-window)
(el-get-bundle ht)
(el-get-bundle htmlize)

;; ** Langages

(el-get-bundle inf-perl)
(el-get-bundle inf-ruby)
(el-get-bundle python)

;; ** Liste principale

(el-get-bundle alert)
(el-get-bundle auctex)
(el-get-bundle auto-complete)
(el-get-bundle auto-mark)
(el-get-bundle avy)
(el-get-bundle command-log-mode)
(el-get-bundle counsel-projectile)
(el-get-bundle dired-hacks)
(el-get-bundle evil)
(el-get-bundle evil-leader)
(el-get-bundle evil-magit)
(el-get-bundle expand-region)
(el-get-bundle ggtags)
(el-get-bundle helm)
(el-get-bundle helm-ag)
(el-get-bundle helm-gtags)
(el-get-bundle helm-projectile)
(el-get-bundle helm-swoop)
(el-get-bundle htmlize)
(el-get-bundle hydra)
(el-get-bundle ibuffer-vc)
(el-get-bundle iy-go-to-char)
(el-get-bundle key-chord)
(el-get-bundle linum-relative)
(el-get-bundle magit)
(el-get-bundle multiple-cursors)
(el-get-bundle org-alert)
(el-get-bundle org-bullets)
(el-get-bundle org-mode)
(el-get-bundle org-publish)
(el-get-bundle outline-magic)
(el-get-bundle ox-pandoc)
(el-get-bundle powerline)
(el-get-bundle powerline-evil)
(el-get-bundle projectile)
(el-get-bundle region-bindings-mode)
(el-get-bundle register-list)
(el-get-bundle ruby-mode)
(el-get-bundle savekill)
(el-get-bundle smartparens)
(el-get-bundle swiper)
(el-get-bundle swiper-helm)
(el-get-bundle ucs-cmds)
(el-get-bundle undo-tree)
(el-get-bundle vimish-fold)
(el-get-bundle wgrep)
(el-get-bundle which-key)
(el-get-bundle yasnippet)
(el-get-bundle ztree)

;; ** Recettes personnelles

(el-get-bundle eval-in-repl)
(el-get-bundle evil-org-mode-somelauw)
(el-get-bundle mtorus-chimay)
(el-get-bundle org-wild-notifier)
(el-get-bundle ox-twbs)
(el-get-bundle xah-math-input)

;; Sync

(el-get 'sync)

;; * Provide

(provide 'personnel/paquets)

;; * Variables locales

;; Local Variables:
;; eval: (outline-minor-mode)
;; outline-regexp: "^[;]*[ ]*[*]+"
;; End:
