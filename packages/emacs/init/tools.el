;; パッケージ設定 
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'color-theme)
(color-theme-initialize)
(color-theme-ld-dark)

;; ライン行数を表示する
(global-linum-mode)
(setq linum-format "%4d ")
(global-linum-mode 1)

;; 現在の行をハイライトする
(require 'highlight-current-line)
(highlight-current-line-on t)
(set-face-background 'highlight-current-line-face "#343434")

;; スマートコンパイル
(require 'smart-compile)
(setq smart-compile-alist
       (append
        '(
          ("\\.rb$"  . "ruby %f") ; 環境依存 注意
          ("\\.sh$"  . "bash %f")
          ("\\.hs$"  . "runhaskell %f")
          ("\\.cc$"  . "g++ -O2 %f -o %n")
          ("\\.c$"   . "gcc -Wall %f -o %n")
          ("\\.go$"  . "go run %f")
          ("\\.f08$" . "gfortran -fbounds-check -fbacktrace  -O -Wuninitialized -cpp %f -o %n")
          ("\\.ml$"  . "ocaml %f")
          ("\\.d$"   . "dmd -run %f")
          ("\\.rs$"  . "rustc %f -o %n && ./%n")
          ("\\.nim$"  . "nim c -r --verbosity:0 %n")
          ("\\.php$" . "php %f")
          ("\\.erl$" . "erl %f")
          ("\\.py$"  . "python3.6 %f")
          ("\\.gp$"  . "gnuplot %f")
          ("\\.jl$"  . "julia %f")
          ("\\.scm$"  . "gosh %f")
          ("\\.scala$"  . "scala %f"))
        smart-compile-alist))
(global-set-key "\C-cc" 'smart-compile)
(global-set-key (kbd "C-c C-c") (kbd "C-c c C-m"))

;; 自動補完
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")


;; スニペット補完
(require 'yasnippet)
;; (setq yas/snippet-dirs "~/.emacs.d/snippets")
(custom-set-variables '(yas-trigger-key "TAB"))
(setq yas/next-field-key '("TAB <tab>"))
(setq yas/prev-field-key '("<backtab>" "<S-tab>"))
(yas/global-mode t)

(setq edconf-exec-path "/usr/local/bin/editorconfig")
(editorconfig-mode 1)

(require 'company)
(global-company-mode)

(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
;;                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(global-whitespace-mode 1)