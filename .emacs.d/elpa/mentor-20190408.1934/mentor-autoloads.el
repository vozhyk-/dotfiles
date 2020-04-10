;;; mentor-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mentor" "mentor.el" (0 0 0 0))
;;; Generated autoloads from mentor.el

(autoload 'mentor "mentor" "\
Control rtorrent from Emacs using XML-RPC.

If mentor is already running, switch to its buffer.  Otherwise,
start a new session.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mentor" '("mentor-")))

;;;***

;;;### (autoloads nil "mentor-data" "mentor-data.el" (0 0 0 0))
;;; Generated autoloads from mentor-data.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mentor-data" '("mentor-")))

;;;***

;;;### (autoloads nil "mentor-files" "mentor-files.el" (0 0 0 0))
;;; Generated autoloads from mentor-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mentor-files" '("mentor-")))

;;;***

;;;### (autoloads nil "mentor-rpc" "mentor-rpc.el" (0 0 0 0))
;;; Generated autoloads from mentor-rpc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mentor-rpc" '("mentor-")))

;;;***

;;;### (autoloads nil "url-scgi" "url-scgi.el" (0 0 0 0))
;;; Generated autoloads from url-scgi.el

(autoload 'url-scgi "url-scgi" "\
Handle SCGI URLs from internal Emacs functions.

URL must be a parsed URL.  See `url-generic-parse-url' for details.

When retrieval is completed, execute the function CALLBACK, passing it
an updated value of CBARGS as arguments.

\(fn URL CALLBACK CBARGS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "url-scgi" '("url-scgi-")))

;;;***

;;;### (autoloads nil nil ("mentor-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; mentor-autoloads.el ends here
