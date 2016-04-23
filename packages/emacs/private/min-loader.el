
(provide 'min-loader)

(defvar loader-path "~/.emacs.d/init")

(defun min-loads (names)
  (mapcar '(lambda (name)
	     ;; (hook-benchmark (min-load name)))
          (min-load name))
	  names))

;; ファイルをロード
(defun min-load (name)
  (print name)
  (let ((filename (format "%s/%s" loader-path name)))
    (print filename)
    (if (file-exists-p filename)
        (load filename)
        (error (format "File Not Found: %s" filename)))))

;; loader-path を設定, (末尾の / を削除する)
(defun set-loader-path (path)
  (setq loader-path
        (cond
         ((string-match "^\\(.*\\)/$" path) (match-string 1 path))
         (t path))))


