(defsystem cl-gstreamer
  :version "1.0.0"
  :author "Bohong Huang <1281299809@qq.com>"
  :maintainer "Bohong Huang <1281299809@qq.com>"
  :license "lgpl3"
  :description "GStreamer bindings for Common Lisp."
  :homepage "https://github.com/bohonghuang/cl-gstreamer"
  :bug-tracker "https://github.com/bohonghuang/cl-gstreamer/issues"
  :source-control (:git "https://github.com/bohonghuang/cl-gstreamer.git")
  :serial t
  :components ((:file "gstreamer"))
  :depends-on (#:uiop #:cl-gobject-introspection-wrapper))

(uiop:register-image-restore-hook
 (lambda ()
   (dolist (namespace '("Gst" "GstCheck" "GstController" "GstNet"))
     (let ((package (find-package (string-upcase namespace))))
       (when package
         (setf (symbol-value (find-symbol "*NS*" package))
               (uiop:symbol-call :gir :require-namespace namespace "1.0")))))))
