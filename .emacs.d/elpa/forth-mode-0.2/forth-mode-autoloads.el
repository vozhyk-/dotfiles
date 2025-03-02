;;; forth-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (file-name-directory load-file-name)) (car load-path)))



;;; Generated autoloads from forth-block-mode.el

(autoload 'forth-block-mode "forth-block-mode" "\
Minor mode for Forth code in blocks.

This is a minor mode.  If called interactively, toggle the
`Forth-block mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `forth-block-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "forth-block-mode" '("forth-"))


;;; Generated autoloads from forth-interaction-mode.el

(autoload 'forth-kill "forth-interaction-mode" "\


(fn &optional BUFFER)" t)
(autoload 'run-forth "forth-interaction-mode" "\
Start an interactive forth session." t)
(autoload 'forth-restart "forth-interaction-mode" nil t)
(autoload 'forth-interaction-send "forth-interaction-mode" "\


(fn &rest STRINGS)")
(autoload 'forth-words "forth-interaction-mode")
(autoload 'forth-eval "forth-interaction-mode" "\


(fn STRING)" t)
(autoload 'forth-eval-region "forth-interaction-mode" "\


(fn START END)" t)
(autoload 'forth-eval-defun "forth-interaction-mode" nil t)
(autoload 'forth-load-file "forth-interaction-mode" "\


(fn FILE)" t)
(autoload 'forth-see "forth-interaction-mode" "\


(fn WORD)" t)
(autoload 'forth-switch-to-output-buffer "forth-interaction-mode" nil t)
(autoload 'forth-switch-to-source-buffer "forth-interaction-mode" nil t)
(autoload 'forth-eval-last-expression "forth-interaction-mode" nil t)
(autoload 'forth-eval-last-expression-display-output "forth-interaction-mode" nil t)
(register-definition-prefixes "forth-interaction-mode" '("forth-"))


;;; Generated autoloads from forth-mode.el

(autoload 'forth-mode "forth-mode" "\
Major mode for editing Forth files.

(fn)" t)
(add-to-list 'auto-mode-alist '("\\.\\(f\\|fs\\|fth\\|4th\\)\\'" . forth-mode))
(register-definition-prefixes "forth-mode" '("forth-"))


;;; Generated autoloads from forth-parse.el

(register-definition-prefixes "forth-parse" '("forth-"))


;;; Generated autoloads from forth-smie.el

(register-definition-prefixes "forth-smie" '("forth-smie-"))


;;; Generated autoloads from forth-spec.el

(register-definition-prefixes "forth-spec" '("forth-spec-"))


;;; Generated autoloads from forth-syntax.el

(register-definition-prefixes "forth-syntax" '("forth-syntax-"))

;;; End of scraped data

(provide 'forth-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; forth-mode-autoloads.el ends here
