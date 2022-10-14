(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; ========================================================================
;; Basic Customization
;; ========================================================================

(setq inhibit-startup-message t) ;; Hide the startup message
(load-theme 'material-light t)
(global-linum-mode t)            ;; Enable line numbers globally
(column-number-mode t)           ;; Enable displaying column number

;; ========================================================================
;; Development Setup
;; ========================================================================

;; Enable elpy
(elpy-enable)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(projectile slime material-theme evil elpy better-defaults)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'evil)
(evil-mode 1)

(global-undo-tree-mode)
(evil-set-undo-system 'undo-tree)

;; I almost always am editing version-controlled files, so turn off
;; emacs default backups (tilde files).
(setq make-backup-files 'nil)
