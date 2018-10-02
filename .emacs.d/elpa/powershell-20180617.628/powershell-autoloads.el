;;; powershell-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "powershell" "../../../../../.emacs.d/elpa/powershell-20180617.628/powershell.el"
;;;;;;  "bdde7bda048af7589f160c9b8694c5eb")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/powershell-20180617.628/powershell.el

(add-to-list 'auto-mode-alist '("\\.ps[dm]?1\\'" . powershell-mode))

(autoload 'powershell-mode "powershell" "\
Major mode for editing PowerShell scripts.

\\{powershell-mode-map}
Entry to this mode calls the value of `powershell-mode-hook' if
that value is non-nil.

\(fn)" t nil)

(autoload 'powershell "powershell" "\
Run an inferior PowerShell.
If BUFFER is non-nil, use it to hold the powershell
process.  Defaults to *PowerShell*.

Interactively, a prefix arg means to prompt for BUFFER.

If BUFFER exists but the shell process is not running, it makes a
new shell.

If BUFFER exists and the shell process is running, just switch to
BUFFER.

If PROMPT-STRING is non-nil, sets the prompt to the given value.

See the help for `shell' for more details.  (Type
\\[describe-mode] in the shell buffer for a list of commands.)

\(fn &optional BUFFER PROMPT-STRING)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "powershell" "../../../../../.emacs.d/elpa/powershell-20180617.628/powershell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/powershell-20180617.628/powershell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "powershell" '("powershell-" "explicit-powershell.exe-args")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/powershell-20180617.628/powershell-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/powershell-20180617.628/powershell.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; powershell-autoloads.el ends here
