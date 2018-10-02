;;; highlight-escape-sequences-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "highlight-escape-sequences" "highlight-escape-sequences.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from highlight-escape-sequences.el

(autoload 'turn-on-hes-mode "highlight-escape-sequences" "\
Turn on `highlight-escape-sequences-mode'.

\(fn)" t nil)

(autoload 'turn-off-hes-mode "highlight-escape-sequences" "\
Turn off `highlight-escape-sequences-mode'.

\(fn)" t nil)

(autoload 'highlight-escape-sequences-mode "highlight-escape-sequences" "\
Toggle highlighting of escape sequences in the current buffer.

\(fn &optional ARG)" t nil)

(defvar global-highlight-escape-sequences-mode nil "\
Non-nil if Global Highlight-Escape-Sequences mode is enabled.
See the `global-highlight-escape-sequences-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-highlight-escape-sequences-mode'.")

(custom-autoload 'global-highlight-escape-sequences-mode "highlight-escape-sequences" nil)

(autoload 'global-highlight-escape-sequences-mode "highlight-escape-sequences" "\
Toggle Highlight-Escape-Sequences mode in all buffers.
With prefix ARG, enable Global Highlight-Escape-Sequences mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Highlight-Escape-Sequences mode is enabled in all buffers where
`turn-on-hes-mode' would do it.
See `highlight-escape-sequences-mode' for more information on Highlight-Escape-Sequences mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; highlight-escape-sequences-autoloads.el ends here
