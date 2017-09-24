;;; packages.el --- JHu layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: 胡俊杰 <hujunjie@MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `JHu-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `JHu/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `JHu/pre-init-PACKAGE' and/or
;;   `JHu/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

;; 添加 package
(defconst JHu-packages
  '(youdao-dictionary
    ;; (ess-R-object-popup :location (recipe :fetcher github :repo "myuhe/ess-R-object-popup"))
    lispy
    )
  )

;; 初始化 package
;; 可以使用 , d m 快捷键, 然后按下 e 展开宏
(defun JHu/init-youdao-dictionary ()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

;; (defun JHu/init-ess-R-object-popup ()
;;   (use-package ess-R-object-popup
;;     :init)
;;   )

(defun JHu/init-lispy ()
  (use-package lispy
    :init
   )
  )

;;; packages.el ends here
