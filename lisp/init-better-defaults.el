;;声音取消
(setq ring-bell-function 'ignore)
;;显示行号
(global-linum-mode t)
(global-auto-revert-mode t)
;;自定义补齐功能
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("syso" "System.out.println()")
					    ))
;;删除选中位置
(delete-selection-mode t)
;;去掉备份文件
(setq make-backup-files nil)
;;禁止自动保存
(setq auto-save-default nil)
;;设置最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;代码缩进
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))
(provide 'init-better-defaults)
