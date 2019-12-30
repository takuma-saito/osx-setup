;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacsの設定ファイル ;;
;;;;;;;;;;;;;;;;;;;;;;;;;


;; brew install cask
(require 'cask "~/.emacs.d/.cask/main/cask.el")
(cask-initialize)

(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/public")
        (expand-file-name "~/.emacs.d/private"))
       load-path))

(require 'min-loader)
(set-loader-path "~/.emacs.d/init")
(min-loads
 (list
  
  ;;;; important
  "func.el"
  "env.el"
  "tools.el"
  "helm.el"
  
  ;;;; languages
  "lang.el"
  "ruby.el"
  "lisp.el"
  "rust.el"
  "nim.el"
  "web-mode.el"
  "scala.el"

  ;;;; other
  ;; "scss.el"
  ;; "haskell.el"
  ;; "go.el"
  ;;"yatex.el"
  ;; "gnuplot.el"
  ;; "nim.el"
  ;;"omake.el"
  ;;"fortran.el"
  ;; "ku-proxy.el"  
  ;; "multi-web-mode.el"
  
  ))

