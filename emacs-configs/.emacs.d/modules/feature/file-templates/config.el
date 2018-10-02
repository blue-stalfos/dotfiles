;;; feature/file-templates/config.el -*- lexical-binding: t; -*-

(defvar +file-templates-dir
  (expand-file-name "templates/" (file-name-directory load-file-name))
  "The path to a directory of yasnippet folders to use for file templates.")

(defvar +file-templates-default-trigger "__"
  "The default yasnippet trigger key (a string) for file template rules that
don't have a :trigger property in `+file-templates-alist'.")

(defvar +file-templates-alist
  `(;; General
    (gitignore-mode)
    (dockerfile-mode)
    ("/docker-compose\\.yml$" :mode yaml-mode)
    ("/Makefile$"             :mode makefile-gmake-mode)
    ;; elisp
    ("/.dir-locals.el$")
    ("/packages\\.el$" :when +file-templates-in-emacs-dirs-p
     :trigger "__doom-packages"
     :mode emacs-lisp-mode)
    ("/doctor\\.el$" :when +file-templates-in-emacs-dirs-p
     :trigger "__doom-doctor"
     :mode emacs-lisp-mode)
    ("/test/.+\\.el$" :when +file-templates-in-emacs-dirs-p
     :trigger "__doom-test"
     :mode emacs-lisp-mode)
    ("\\.el$" :when +file-templates-in-emacs-dirs-p
     :trigger "__doom-module"
     :mode emacs-lisp-mode)
    ("-test\\.el$" :mode emacs-ert-mode)
    (emacs-lisp-mode :trigger "__initfile")
    (snippet-mode)
    ;; C/C++
    ("/main\\.c\\(?:c\\|pp\\)$"   :trigger "__main.cpp"    :mode c++-mode)
    ("/win32_\\.c\\(?:c\\|pp\\)$" :trigger "__winmain.cpp" :mode c++-mode)
    ("\\.c\\(?:c\\|pp\\)$"        :trigger "__cpp" :mode c++-mode)
    ("\\.h\\(?:h\\|pp\\|xx\\)$"   :trigger "__hpp" :mode c++-mode)
    ("\\.h$" :trigger "__h" :mode c-mode)
    (c-mode  :trigger "__c")
    ;; go
    ("/main\\.go$" :trigger "__main.go" :mode go-mode :project t)
    (go-mode :trigger "__.go")
    ;; web-mode
    ("/normalize\\.scss$" :trigger "__normalize.scss" :mode scss-mode)
    ("/master\\.scss$" :trigger "__master.scss" :mode scss-mode)
    ("\\.html$" :trigger "__.html" :mode web-mode)
    (scss-mode)
    ;; java
    ("/main\\.java$" :trigger "__main" :mode java-mode)
    ("/build\\.gradle$" :trigger "__build.gradle" :mode android-mode)
    ("/src/.+\\.java$" :mode java-mode)
    ;; javascript
    ("/package\\.json$"        :trigger "__package.json" :mode json-mode)
    ("/bower\\.json$"          :trigger "__bower.json" :mode json-mode)
    ("/gulpfile\\.js$"         :trigger "__gulpfile.js" :mode js-mode)
    ("/webpack\\.config\\.js$" :trigger "__webpack.config.js" :mode js-mode)
    ("\\.js\\(?:on\\|hintrc\\)$" :mode json-mode)
    ;; Lua
    ("/main\\.lua$" :trigger "__main.lua" :mode love-mode)
    ("/conf\\.lua$" :trigger "__conf.lua" :mode love-mode)
    ;; Markdown
    (markdown-mode)
    ;; Org
    ("/README\\.org$"
     :when +file-templates-in-emacs-dirs-p
     :trigger "__doom-readme"
     :mode org-mode)
    ("\\.org$" :trigger "__" :mode org-mode)
    ;; PHP
    ("\\.class\\.php$" :trigger "__.class.php" :mode php-mode)
    (php-mode)
    ;; Python
    ;; TODO ("tests?/test_.+\\.py$" :trigger "__" :mode nose-mode)
    ;; TODO ("/setup\\.py$" :trigger "__setup.py" :mode python-mode)
    (python-mode)
    ;; Ruby
    ("/lib/.+\\.rb$"      :trigger "__module"   :mode ruby-mode :project t)
    ("/spec_helper\\.rb$" :trigger "__helper"   :mode rspec-mode :project t)
    ("_spec\\.rb$"                              :mode rspec-mode :project t)
    ("/\\.rspec$"         :trigger "__.rspec"   :mode rspec-mode :project t)
    ("\\.gemspec$"        :trigger "__.gemspec" :mode ruby-mode :project t)
    ("/Gemfile$"          :trigger "__Gemfile"  :mode ruby-mode :project t)
    ("/Rakefile$"         :trigger "__Rakefile" :mode ruby-mode :project t)
    (ruby-mode)
    ;; Rust
    ("/Cargo.toml$" :trigger "__Cargo.toml" :mode rust-mode)
    ("/main\\.rs$" :trigger "__main.rs" :mode rust-mode)
    ;; Slim
    ("/\\(?:index\\|main\\)\\.slim$" :mode slim-mode)
    ;; Shell scripts
    ("\\.zunit$" :trigger "__zunit" :mode sh-mode)
    (fish-mode)
    (sh-mode)
    ;; Solidity
    (solidity-mode :trigger "__sol"))
  "An alist of file template rules. The CAR of each rule is either a major mode
symbol or regexp string. The CDR is a plist. See `set-file-template!' for more
information.")


;;
;; Library

(defun +file-templates-in-emacs-dirs-p (file)
  "Returns t if FILE is in Doom or your private directory."
  (or (file-in-directory-p file doom-private-dir)
      (file-in-directory-p file doom-emacs-dir)))

(defun +file-templates|check ()
  "Check if the current buffer is a candidate for file template expansion. It
must be non-read-only, empty, and there must be a rule in
`+file-templates-alist' that applies to it."
  (when (and (not buffer-read-only)
             (bobp) (eobp)
             (get-buffer-window)
             (not (string-match-p "^ *\\*" (buffer-name))))
    (when-let* ((rule (cl-find-if #'+file-template-p +file-templates-alist)))
      (apply #'+file-templates--expand rule))))


;;
;; Bootstrap

(after! yasnippet
  (if (featurep! :feature snippets)
      (add-to-list 'yas-snippet-dirs '+file-templates-dir 'append #'eq)
    (setq yas-prompt-functions (delq #'yas-dropdown-prompt yas-prompt-functions)
          yas-snippet-dirs '(+file-templates-dir))
    ;; Exit snippets on ESC from normal mode
    (add-hook 'doom-escape-hook #'yas-abort-snippet)
    ;; Ensure file templates in `+file-templates-dir' are visible
    (yas-reload-all)))

;;
(add-hook 'find-file-hook #'+file-templates|check)