
;; `M-x slime`: slime を起動
;; `C-c S`: goshのインタープリタが起動
;; `C-c C-l`: インタープリタにファイルをロード
;; `C-x C-e`: 式を評価(ex. (+ 2 3)の直後にカーソルを合わせてC-x C-eするとインタープリタに5が表示)
;; `C-x o`: 次のウィンドウへ

(setq scheme-program-name "/usr/local/bin/gosh -i -I.")

(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)

(defun run-scm ()
  "Run Gauche on other window"
  (interactive)
  (split-window-horizontally (/ (frame-width) 2))
  (let ((buf-name (buffer-name (current-buffer))))
    (scheme-mode)
    (switch-to-buffer-other-window
     (get-buffer-create "*scheme*"))
    (run-scheme scheme-program-name)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))
