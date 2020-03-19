;;; mentor-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mentor" "mentor.el" (0 0 0 0))
;;; Generated autoloads from mentor.el

(autoload 'mentor-mode "mentor" "\
Major mode for controlling rTorrent from GNU Emacs

Type \\[mentor] to start Mentor.

rTorrent operations:

  `\\[mentor-download-load-torrent]' - Add torrent
  `\\[mentor-download-load-magnet-link-or-url]' - Add Magnet link, URL or torrent file path
  `\\[mentor-update]' - Reload data from rTorrent
  `\\[mentor-reload]' - Re-initialize all data from rTorrent

Operations on download at point (or marked downloads):

  `\\[mentor-download-start]' - Start download
  `\\[mentor-download-stop]' - Stop download
  `\\[mentor-download-close]' - Close download
  `\\[mentor-download-hash-check]' - Initiate hash check
  `\\[mentor-download-move]' - Move download
  `\\[mentor-download-change-target-directory]' - Change target directory
  `\\[mentor-download-remove]' - Remove download
  `\\[mentor-download-remove-including-files]' - Remove download including data
  `\\[mentor-download-copy-data]' - Copy downloaded data to location
  `\\[mentor-increase-priority]' - Increase priority of download
  `\\[mentor-decrease-priority]' - Decrease priority of download
  `\\[mentor-download-set-create-resized-queued-flags]' - Set the 'create/resize queued' flags on all files in a torrent.
      This is necessary if the underlying files in a torrent have been deleted
      or truncated, and thus rtorrent must recreate them.

Operations on download at point:

  `\\[mentor-show-download-files]' - Enter files view
  `\\[mentor-update-item]' - Reload data from rTorrent
  `\\[mentor-dired-jump]' - Show download in Dired

Marking commands:

  `\\[mentor-mark]' - Mark download
  `\\[mentor-unmark]' - Unmark download
  `\\[mentor-mark-all]' - Mark all downloads
  `\\[mentor-unmark-all]' - Unmark all downloads

Sorting downloads:

  `\\[mentor-sort-by-directory]' - Sort downloads by directory
  `\\[mentor-sort-by-name]' - Sort by name
  `\\[mentor-sort-by-tied-file-name]' - Sort by tied file name
  `\\[mentor-sort-by-size]' - Sort by size
  `\\[mentor-sort-by-state]' - Sort by state
  `\\[mentor-sort-by-download-speed]' - Sort by download speed
  `\\[mentor-sort-by-upload-speed]' - Sort by upload speed
  `\\[mentor-sort-by-property-prompt]' - Sort by any property (shows prompt)

Misc commands:

  `0' to `9' - Change currently active view
  `\\[mentor-switch-to-view]' - Switch to view (prompt)
  `\\[mentor-add-torrent-to-view]' - Add download to view
  `\\[mentor-call-command]' - Send XML-RPC command to rTorrent
  `\\[mentor-shutdown] - Shutdown Mentor
  `\\[bury-buffer] - Bury Mentor buffer

\\{mentor-mode-map}

\(fn)" t nil)

(autoload 'mentor "mentor" "\
Control rTorrent from Emacs using XML-RPC.

If mentor is already running, switch to its buffer.  Otherwise,
start a new session.

Full documentation is available under `mentor-mode'.

\(fn)" t nil)

(autoload 'mentor-customize "mentor" "\
Call the customize function with mentor as argument.

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

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mentor-rpc" '("mentor-rpc-")))

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
