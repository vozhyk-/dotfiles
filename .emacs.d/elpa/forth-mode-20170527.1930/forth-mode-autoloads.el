;;; forth-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "forth-block-mode" "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-block-mode.el"
;;;;;;  "76e536523a97116f6561ed7cb9d22b22")
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-block-mode.el

(autoload 'forth-block-mode "forth-block-mode" "\
Minor mode for Forth code in blocks.

If called interactively, enable Forth-Block mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "forth-block-mode"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-block-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-block-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-block-mode" '("forth-")))

;;;***

;;;***

;;;### (autoloads nil "forth-interaction-mode" "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-interaction-mode.el"
;;;;;;  "ef3e150ad93b981f466d8f8bbd29e314")
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-interaction-mode.el

(autoload 'forth-kill "forth-interaction-mode" "\


\(fn &optional BUFFER)" t nil)

(autoload 'run-forth "forth-interaction-mode" "\
Start an interactive forth session." t nil)

(autoload 'forth-restart "forth-interaction-mode" nil t nil)

(autoload 'forth-interaction-send "forth-interaction-mode" "\


\(fn &rest STRINGS)" nil nil)

(autoload 'forth-words "forth-interaction-mode" nil nil nil)

(autoload 'forth-eval "forth-interaction-mode" "\


\(fn STRING)" t nil)

(autoload 'forth-eval-region "forth-interaction-mode" "\


\(fn START END)" t nil)

(autoload 'forth-eval-defun "forth-interaction-mode" nil t nil)

(autoload 'forth-load-file "forth-interaction-mode" "\


\(fn FILE)" t nil)

(autoload 'forth-see "forth-interaction-mode" "\


\(fn WORD)" t nil)

(autoload 'forth-switch-to-output-buffer "forth-interaction-mode" nil t nil)

(autoload 'forth-switch-to-source-buffer "forth-interaction-mode" nil t nil)

(autoload 'forth-eval-last-expression "forth-interaction-mode" nil t nil)

(autoload 'forth-eval-last-expression-display-output "forth-interaction-mode" nil t nil)

;;;### (autoloads "actual autoloads are elsewhere" "forth-interaction-mode"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-interaction-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-interaction-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-interaction-mode" '("forth-")))

;;;***

;;;***

;;;### (autoloads nil "forth-mode" "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode.el"
;;;;;;  "4445c6ecc6a6079c942915a0dd2d3bbd")
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode.el

(autoload 'forth-mode "forth-mode" "\
Major mode for editing Forth files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(f\\|fs\\|fth\\|4th\\)\\'" . forth-mode))

;;;### (autoloads "actual autoloads are elsewhere" "forth-mode" "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-mode" '("forth-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "forth-parse"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-parse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-parse.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-parse" '("forth-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "forth-smie" "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-smie.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-smie.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-smie" '("forth-smie-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "forth-spec" "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-spec.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-spec.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-spec" '("forth-spec-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "forth-syntax"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-syntax.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-syntax.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "forth-syntax" '("forth-syntax-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-block-mode.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-interaction-mode.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode-autoloads.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode-pkg.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-mode.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-parse.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-smie.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-spec.el"
;;;;;;  "../../../../../../home/vozhyk/.emacs.d/elpa/forth-mode-20170527.1930/forth-syntax.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; forth-mode-autoloads.el ends here
