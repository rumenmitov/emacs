(setq inhibit-startup-message t)
(setq initial-scratch-message ";; -- Welcome to Emacs --\n\n")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-frame-font "DejaVu Sans Mono 12" nil t)

(global-display-line-numbers-mode 1)

(load-theme 'deeper-blue' t)

(recentf-mode 1)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(icomplete-vertical-mode)
(setq icomplete-in-buffer t)
(define-key icomplete-vertical-mode-minibuffer-map (kbd "TAB") 'icomplete-force-complete)
(define-key icomplete-vertical-mode-minibuffer-map (kbd "RET") 'icomplete-force-complete-and-exit)
(setq completion-auto-select t)
(setq completion-auto-help 'always)

(setq use-short-answers t)

(require 'package)
(add-to-list 'package-archives '("meta" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package haskell-mode)

(add-hook 'haskell-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(require 'flymake)
(define-key flymake-mode-map (kbd "C-x M-]") 'flymake-goto-next-error)
(define-key flymake-mode-map (kbd "C-x M-[") 'flymake-goto-prev-error)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(haskell-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
