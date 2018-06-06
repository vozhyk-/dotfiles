(server-start)

(require 'cl)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/elisp")
;(require 'darcsum)
;(load-file "~/.emacs.d/darcsum")
;(load-file "~/.emacs.d/50darcsum")
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'global-flycheck-mode)

(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "dv") ; US Dvorak (Ergonomic)
(require 'ergoemacs-mode)
;(load-file "~/.emacs.d/elpa/ergoemacs-keybindings-20120814.1528/ergoemacs-mode.el")
(ergoemacs-mode 1)

(require 'helm-config)
(global-set-key (kbd "C-o") #'helm-find-files)
(global-set-key (kbd "M-a") #'helm-M-x)
(helm-mode 1)

;(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20130516.8")
(require 'undo-tree)
(global-undo-tree-mode 1)

;(load-library 'zlc)

(set-face-attribute 'default nil :height 100)
;(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-solarized-20130307.1350/")
(load-theme 'solarized t)

(global-subword-mode 1)
(add-hook 'after-init-hook 'global-hungry-delete-mode)

(setq mouse-yank-at-point t) ; taken from kevwargo/emacs-config

(savehist-mode 1)

(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

(global-set-key (kbd "H-s") 'get-term)
(global-set-key (kbd "H-S") 'get-term)

(global-set-key [home]      'smart-beginning-of-line)
(global-set-key (kbd "M-d") 'smart-beginning-of-line)

(global-set-key (kbd "<H-return>") 'smart-open-line-above)
(global-set-key (kbd "H-M-m") 'smart-open-line-above)

(global-set-key (kbd "M-M") 'auto-goto-defun)
(global-set-key (kbd "<S-return>") 'auto-goto-defun)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-s")   'isearch-forward)
(global-set-key (kbd "C-r")   'isearch-backward)
(global-set-key (kbd "M-L")   'enlarge-window)
;(global-set-key (kbd "H-R")   'slime-restart-inferior-lisp)
(global-set-key (kbd "M-<tab>") 'company-complete)

(global-set-key (kbd "<f8> c") 'compile)
(global-set-key (kbd "<f8> <f9>") 'recompile)

(define-prefix-command 'F9-map)
(global-set-key (kbd "<f9>") 'F9-map)

(define-key F9-map (kbd "d") 'cd)
(define-key F9-map (kbd "SPC") 'get-term)
(define-key F9-map (kbd "*") 'save-buffer)
(define-key F9-map (kbd ")") 'save-buffer)
(define-key F9-map (kbd "<f9>") 'save-buffer)
(define-key F9-map (kbd "g") 'previous-buffer)
(define-key F9-map (kbd "r") 'next-buffer)

(global-set-key (kbd "C-c a") 'helm-do-ag)
; TODO bind it only for files under Git
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame)
(global-set-key (kbd "C-c l") 'git-link)

(define-key key-translation-map (kbd "M-c") (kbd "<up>"))
(define-key key-translation-map (kbd "M-t") (kbd "<down>"))
(define-key key-translation-map (kbd "M-h") (kbd "<left>"))
(define-key key-translation-map (kbd "M-n") (kbd "<right>"))

(define-key key-translation-map (kbd "M-e") (kbd "DEL")) ; Backspace
(define-key key-translation-map (kbd "M-u") (kbd "<delete>")) ; Backspace
(define-key key-translation-map (kbd "M-m") (kbd "RET"))


(load-file "~/.emacs.d/elisp/robot-mode.el")
(add-to-list 'auto-mode-alist '("\\.robot\\'" . robot-mode))

;(load "~/.emacs.d/multi-term.el")
(require 'multi-term)
(setq multi-term-program "/bin/zsh")
;(defface term-black
;  `((t (:background "Black1")))
;  "" :frame-background-mode "dark")
(defun last-term-buffer (l)
  "Return most recently used term buffer."
  (when l
    (if (eq 'term-mode (with-current-buffer (car l) major-mode))
	(car l) (last-term-buffer (cdr l)))))
(defun get-term ()
  "Switch to the term buffer last used, or create a new one if
    none exists, or if the current buffer is already a term."
  (interactive)
  (let ((b (last-term-buffer (buffer-list))))
    (if (or (not b) (eq 'term-mode major-mode))
	(multi-term)
      (switch-to-buffer b))))

(set-language-environment "utf-8")
(setq slime-lisp-implementations
      '((sbcl ("sbcl" "--noinform" "--no-linedit" "--core" "/home/vozhyk/dev/lisp/sbcl.core-for-slime"))
	(clisp ("clisp"))
	(abcl ("abcl"))
	(cmucl ("lisp"))
	(ccl ("ccl" "-K" "utf-8"))
	(ecl ("ecl"))))
(setq slime-net-coding-system 'utf-8-unix)
(setq slime-contribs '(slime-fancy))

(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive "^") ; Use (interactive "^") in Emacs 23 to make shift-select work
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(defun smart-open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

; http://stackoverflow.com/a/8020861/795068
(defvar auto-goto-defun-function
  (lambda ()
    (interactive)
    (message "No auto-goto-defun-function defined for buffer"))
  "Set this to the appropriate goto-defun function for the buffer's major mode")
(make-variable-buffer-local 'auto-goto-defun-function)

(setq auto-goto-defun-function
  (lambda (&optional arg)
    (interactive)
    (message (concat "No auto-goto-defun-function set"))))

(defun auto-goto-defun (&rest args)
  "This function run buffer-local function"
  (interactive)
  (if (called-interactively-p 'any)   ;To call interactively AND to
                                      ;be able to have elisp-calls
    (call-interactively auto-goto-defun-function)
    (apply auto-goto-defun-function args)))

;; function decides whether .h file is C or C++ header, sets C++ by
;; default because there's more chance of there being a .h without a
;; .cc than a .h without a .c (ie. for C++ template files)
(defun c-c++-header ()
  "sets either c-mode or c++-mode, whichever is appropriate for
header"
  (interactive)
  (let ((c-file (concat (substring (buffer-file-name) 0 -1) "c")))
    (if (file-exists-p c-file)
        (c-mode)
      (c++-mode))))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c-c++-header))
(add-to-list 'auto-mode-alist '("/mutt" . mail-mode))

(ignore-errors
  (require 'ansi-color)
  (add-hook 'compilation-filter-hook (lambda ()
    (when (eq major-mode 'compilation-mode)
      (ansi-color-apply-on-region compilation-filter-start (point-max))))))

;;; --- --- --- --- --- --- --- --- language hooks --- --- --- --- --- --- --- ---
(defun RET-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))

(dolist (h (mapcar (lambda (x) (intern (concat (symbol-name x) "-mode-hook")))
		   '(haskell ruby scala shell-script html nxml)))
  (add-hook h 'RET-newline-and-indent))

(add-hook 'lisp-mode-hook 'lisp-hook)
(add-hook 'emacs-lisp-mode-hook 'elisp-hook)
(add-hook 'pascal-mode-hook 'pascal-hook)
(add-hook 'assembler-mode-hook 'asm-hook)
(add-hook 'c-mode-hook 'C-hook)
(add-hook 'c++-mode-hook 'C++-hook)
(add-hook 'go-mode-hook 'go-hook)
(add-hook 'js-mode-hook 'js-hook)
(add-hook 'python-mode-hook 'python-hook)

(add-hook 'before-save-hook 'gfmt-before-save)

(delete-selection-mode 1)

(defun lisp-hook ()
  (RET-newline-and-indent)
  (setq indent-tabs-mode nil))

(defun elisp-hook ()
  (lisp-hook)
  (local-set-key (kbd "<f8> <f9>") 'eval-buffer))

(defun compiled-lang-hook ()
  (RET-newline-and-indent)
  (local-set-key "\C-Xc" 'compile))

(defun pascal-hook ()
  (compiled-lang-hook)
  (setq indent-tabs-mode nil))

(defun asm-hook ()
  (compiled-lang-hook)
  (setq-default tab-width 4)
;  (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)
  (setq tab-stop-list (range 4 120 4)))

(defun range (start stop &optional step)
  (and (<= start stop)
       (cons start (range (+ start step) stop step))))

(defun C++-hook ()
  (C-hook)
  (setq c-default-style "linux"
		c-basic-offset 4
		indent-tabs-mode nil))

(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
		 (column (c-langelem-2nd-pos c-syntactic-element))
		 (offset (- (1+ column) anchor))
		 (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

;;
;; Define "sun" mode to get the continuation line indentation
;; proper, ie. sun-like, in cc-mode
;;
(defun c-sun-get-continuation-proper (langelem)
  (save-excursion
    (goto-char (cdr langelem))
    (let ((current-syntax (caar (c-guess-basic-syntax))))
      (if (or (eq current-syntax 'statement)
	      (eq current-syntax 'statement-block-intro))
	  4 0))))

(c-add-style
 "sun"
 '((c-basic-offset . 8)
   (c-comment-only-line-offset . 0)
   (c-offsets-alist . ((statement-block-intro . +)
		       (knr-argdecl-intro . +)
		       (substatement-open . 0)
		       (substatement-label . 0)
		       (arglist-cont . c-sun-get-continuation-proper)
		       (arglist-cont-nonempty . c-sun-get-continuation-proper)
		       (arglist-close . 4)
		       (arglist-intro . 4)
		       (statement-cont . 4)
		       (defun-block-intro . +)
		       ))))

(defun maybe-sun-style ()
  (when (and buffer-file-name
             (string-match "zfs" buffer-file-name))
    (c-set-style "sun")
    (setq indent-tabs-mode t)))

;(add-hook 'c-mode-hook 'maybe-sun-style)

(defun C-hook ()
  (compiled-lang-hook)
  (column-enforce-mode 1)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
;;; --- --- --- --- --- --- --- --- C tab && space indent --- --- --- --- --- --- --- ---
  ;; (setq-default tab-width 4) ; or any other preferred value
  ;; (setq cua-auto-tabify-rectangles nil)
  
  ;; (defadvice align (around smart-tabs activate)
  ;;   (let ((indent-tabs-mode nil)) ad-do-it))
  
  ;; (defadvice align-regexp (around smart-tabs activate)
  ;;   (let ((indent-tabs-mode nil)) ad-do-it))
  
  ;; (defadvice indent-relative (around smart-tabs activate)
  ;;   (let ((indent-tabs-mode nil)) ad-do-it))
  
  ;; (defadvice indent-according-to-mode (around smart-tabs activate)
  ;;   (let ((indent-tabs-mode indent-tabs-mode))
  ;;     (if (memq indent-line-function
  ;;   	'(indent-relative
  ;;   	  indent-relative-maybe))
  ;;     (setq indent-tabs-mode nil))
  ;;     ad-do-it))
  
  ;; (defmacro smart-tabs-advice (function offset)
  ;;   `(progn
  ;;      (defvaralias ',offset 'tab-width)
  ;;      (defadvice ,function (around smart-tabs activate)
  ;;    (cond
  ;;     (indent-tabs-mode
  ;;      (save-excursion
  ;;        (beginning-of-line)
  ;;        (while (looking-at "\t*\\( +\\)\t+")
  ;;          (replace-match "" nil nil nil 1)))
  ;;      (setq tab-width tab-width)
  ;;      (let ((tab-width fill-column)
  ;;   	 (,offset fill-column)
  ;;   	 (wstart (window-start)))
  ;;        (unwind-protect
  ;;   	 (progn ad-do-it)
  ;;          (set-window-start (selected-window) wstart))))
  ;;     (t
  ;;      ad-do-it)))))
  
  ;; (smart-tabs-advice c-indent-line c-basic-offset)
  ;; (smart-tabs-advice c-indent-region c-basic-offset)
;;; --- --- --- --- --- --- --- --- end --- --- --- --- --- --- --- ---
  (maybe-sun-style)
)

(defun go-hook ()
  (compiled-lang-hook)
  (setq-local auto-goto-defun-function (symbol-function 'godef-jump))
  ;(setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))

(defun js-hook ()
  (RET-newline-and-indent)
  (setq-local indent-tabs-mode nil)
  (tern-mode 1)
  (setq-local auto-goto-defun-function (symbol-function 'tern-find-definition)))

(defun python-hook ()
  (RET-newline-and-indent)
  (anaconda-mode 1)
  (setq-local auto-goto-defun-function (symbol-function 'anaconda-mode-find-definitions)))

;(defun kill-buf-emacsclient ()
;  (local-set-key "\C-w" 'server-edit))
;(add-hook 'server-mode-hook 'kill-buf-emacsclient)
(global-set-key (kbd "C-w")
		(lambda ()
		  (interactive)
		  (if server-buffer-clients
		      (server-done)
		    (kill-this-buffer))))

(column-number-mode 1)

;; (defun gtd ()
;;   (interactive)
;;   (find-file "~vozhyk/Vitaut/dox/gtd.org"))

;;; --- --- --- --- --- --- --- ---  ggtags  --- --- --- --- --- --- --- ---
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1)
              (setq-local auto-goto-defun-function
                          (symbol-function 'ggtags-find-tag-dwim))
              (setq-local imenu-create-index-function
                          #'ggtags-build-imenu-index))))

(define-key ggtags-mode-map (kbd "C-c t s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c t h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c t r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c t f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c t c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c t u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "S-RET") 'ggtags-find-tag-dwim)
(define-key ggtags-mode-map (kbd "M-M")   'ggtags-find-tag-dwim)
(define-key ggtags-mode-map (kbd "C-G")   'pop-tag-mark)
;;; --- --- --- --- --- --- --- --- end --- --- --- --- --- --- --- ---

;;; --- --- --- --- --- --- --- --- Sessions --- --- --- --- --- --- --- ---
;; use only one desktop
(setq desktop-path '("~/.emacs.d/"))
(setq desktop-dirname "~/.emacs.d/")
(setq desktop-base-file-name "emacs-desktop")

;; remove desktop after it's been read
(add-hook 'desktop-after-read-hook
	  '(lambda ()
	     ;; desktop-remove clears desktop-dirname
	     (setq desktop-dirname-tmp desktop-dirname)
	     (desktop-remove)
	     (setq desktop-dirname desktop-dirname-tmp)))

(defun saved-session ()
  (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))

;; use session-restore to restore the desktop manually
(defun session-restore ()
  "Restore a saved emacs session."
  (interactive)
  (if (saved-session)
      (desktop-read)
    (message "No desktop found.")))

;; use session-save to save the desktop manually
(defun session-save ()
  "Save an emacs session."
  (interactive)
  (if (saved-session)
      (if (y-or-n-p "Overwrite existing desktop? ")
	  (desktop-save-in-desktop-dir)
	(message "Session not saved."))
  (desktop-save-in-desktop-dir)))

;; ask user whether to restore desktop at start-up
(add-hook 'after-init-hook
	  '(lambda ()
	     (if (saved-session)
		 (if (y-or-n-p "Restore desktop? ")
		     (session-restore)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-dabbrev-downcase nil)
 '(custom-safe-themes
   (quote
    ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default)))
 '(global-rinari-mode t)
 '(gofmt-command "goimports")
 '(haskell-mode-hook
   (quote
    (turn-on-haskell-indentation RET-newline-and-indent)) t)
 '(helm-ff-history-max-length 1000)
 '(magit-diff-arguments (quote ("--no-ext-diff" "--stat" "-M")))
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(magit-push-arguments (quote ("--force-with-lease")))
 '(magit-rebase-arguments (quote ("--autosquash" "--autostash")))
 '(plantuml-jar-path "/home/vozhyk/src/plantuml.jar")
 '(safe-local-variable-values
   (quote
    ((encoding . utf-8)
     (Package ITERATE :use "COMMON-LISP" :colon-mode :external)
     (syntax . COMMON-LISP)
     (Syntax . Ansi-Common-Lisp)
     (Package . CL-USER)
     (Package . CL-FAD)
     (Syntax . COMMON-LISP)
     (Base . 10)
     (Syntax . ANSI-Common-Lisp))))
 '(slime-dfl-use-advanced-faces nil)
 '(term-bind-key-alist
   (quote
    (("C-c C-c" . term-interrupt-subjob)
     ("C-p" . previous-line)
     ("C-n" . next-line)
     ("C-m" . term-send-raw)
     ("C-_" . term-send-raw)
     ("M-f" . term-send-forward-word)
     ("M-<right>" . term-send-forward-word)
     ("C-<right>" . term-send-forward-word)
     ("M-r" . term-send-forward-word)
     ("M-b" . term-send-backward-word)
     ("M-<left>" . term-send-backward-word)
     ("C-<left>" . term-send-backward-word)
     ("M-g" . term-send-backward-word)
     ("M-o" . term-send-backspace)
     ("M-c" . term-send-up)
     ("M-t" . term-send-down)
     ("M-M" . term-send-forward-kill-word)
     ("M-d" . term-send-forward-kill-word)
     ("M-DEL" . term-send-forward-kill-word)
     ("C-DEL" . term-send-forward-kill-word)
     ("M-p" . term-send-forward-kill-word)
     ("M-." . term-send-backward-kill-word)
     ("M-<backspace>" . term-send-backward-kill-word)
     ("C-<backspace>" . term-send-backward-kill-word)
     ("C-r" . term-send-reverse-search-history)
     ("C-s" . term-send-forward-search-history)
     ("M-," . term-send-input)
     ("M-." . comint-dynamic-complete))))
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(slime-dfl-faces-defined-function ((t (:foreground "blue"))) t)
 '(slime-dfl-faces-global-function ((t (:foreground "blue"))) t)
 '(slime-dfl-faces-global-package-function ((t (:foreground "blue"))) t)
 '(slime-dfl-faces-local-function ((t (:foreground "blue"))) t))
(put 'narrow-to-region 'disabled nil)
(put 'scroll-left 'disabled nil)


;; ivy; diminish; swiper; counsel; ibuffer; sublimity; smex; ace-window
