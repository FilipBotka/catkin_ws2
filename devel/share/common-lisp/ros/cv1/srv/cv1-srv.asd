
(cl:in-package :asdf)

(defsystem "cv1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cv1-msg
)
  :components ((:file "_package")
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
  ))