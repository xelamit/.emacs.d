;;; ### ;;; ### ;;;   init.el: the future of .emacs   ;;; ### ;;; ### ;;;
;
; # = # ; # = # ; # = # ; # = #  Appearance
;
(menu-bar-mode -1)
(tool-bar-mode -1)
(add-to-list 'default-frame-alist '(font .  "Inconsolata-9"))
;;; XXX font-lock; colors....
;
; # = # ; # = # ; # = # ; # = # External programs
;
(setq-default remote-shell-program "ssh")
;
; # = # ; # = # ; # = # ; # = # My key bindings
;
(global-set-key "\C-c\C-a" 'mark-whole-buffer)
;
; # = # ; # = # ; # = # ; # = # Basic Editing
;
(setq-default standard-indent 2)
(setq-default fill-column 66)
(setq-default require-final-newline t)
(setq-default track-eol t)
;;; EXPERIMENTAL --- do I like emacs' tab-completion?
(setq-default tab-always-indent (quote complete))
(setq-default colon-double-space t)
;;; prevent fill from breaking after ". "  Not that I ever use that.
(setq-default sentence-end-double-space t)
(setq-default comment-inline-offset 4)
;;; tab inserts spaces, never tabs.
(setq-default indent-tabs-mode nil)
;;; ^k at beginning of line kills the line _and_ the crlf
(setq-default kill-whole-line t)
;;; explicit default:  makes delete-trailing-whitespace nuke trailing lines.
(setq-default delete-trailing-lines t)
(put 'overwrite-mode 'disabled t)
;;; Defaults to 102400; I'd rather it just be on or off.
(setq-default blink-matching-paren-distance nil)
(setq-default case-fold-search t)
;;; This is the default, but I wanted to make it explicit
(setq-default case-replace t)
