
(cl:in-package :asdf)

(defsystem "Zad1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :Zad1-msg
)
  :components ((:file "_package")
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
  ))