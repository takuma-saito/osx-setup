;; haskell の式をすぐに評価する
;; inferior-haskell-load-file(C-c C-l)

;; haskell mode
(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . haskell-mode)
                ("\\.hic?$"   . haskell-mode)
                ("\\.hsc$"    . haskell-mode)
                ("\\.chs$"    . haskell-mode))))

(autoload 'haskell-mode "haskell-mode")
(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))
(setq haskell-program-name "/usr/local/bin/ghci")
(autoload 'ghc-init "ghc")

(autoload 'haskell-mode "haskell-mode" "Major mode for editing Haskell scripts." t)
(autoload 'literate-haskell-mode "haskell-mode" "Major mode for editing literate Haskell scripts." t))
(add-hook 'haskell-mode-hook 'haskell-hook)
(defun haskell-hook ()
  (ghc-init)
  (turn-on-haskell-simple-indent)
  (local-set-key (kbd "C-c C-e") 'inferior-haskell-load-and-run)
  (define-key haskell-mode-map (kbd "<return>") 'haskell-simple-indent-newline-same-col)
  (define-key haskell-mode-map (kbd "C-<return>") 'haskell-simple-indent-newline-indent))

(defadvice inferior-haskell-load-file (after change-focus-after-load)
  "Change focus to GHCi window after \\<haskell-mode-map>\\[inferior-haskell-load-file] command."
  (other-window 1))
