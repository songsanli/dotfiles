;;; early-init.el --- Emacs 27+ pre-initialisation config

;;; Commentary:

;; Emacs 27+ loads this file before (normally) calling
;; `package-initialize'.  We use this file to suppress that automatic
;; behaviour so that startup is consistent across Emacs versions.
;;
;; This file is loaded before the package system and GUI is initialized.
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Early-Init-File.html

;;; Code:

(setq package-enable-at-startup nil)

(setq frame-resize-pixelwise t)
(set-scroll-bar-mode nil)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(column-number-mode)

;; So we can detect this having been loaded
(provide 'early-init)

;;; early-init.el ends here
