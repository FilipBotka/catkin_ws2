;; Auto-generated. Do not edit!


(when (boundp 'Zad1::Move)
  (if (not (find-package "ZAD1"))
    (make-package "ZAD1"))
  (shadow 'Move (find-package "ZAD1")))
(unless (find-package "ZAD1::MOVE")
  (make-package "ZAD1::MOVE"))
(unless (find-package "ZAD1::MOVEREQUEST")
  (make-package "ZAD1::MOVEREQUEST"))
(unless (find-package "ZAD1::MOVERESPONSE")
  (make-package "ZAD1::MOVERESPONSE"))

(in-package "ROS")





(defclass Zad1::MoveRequest
  :super ros::object
  :slots (_data _positions ))

(defmethod Zad1::MoveRequest
  (:init
   (&key
    ((:data __data) (instance Zad1::Data :init))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   (setq _positions __positions)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; Zad1/Data _data
    (send _data :serialization-length)
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; Zad1/Data _data
       (send _data :serialize s)
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; Zad1/Data _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;; float64[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass Zad1::MoveResponse
  :super ros::object
  :slots (_success _message ))

(defmethod Zad1::MoveResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass Zad1::Move
  :super ros::object
  :slots ())

(setf (get Zad1::Move :md5sum-) "ce32e5303119ccbdd2fb5264b03d3f36")
(setf (get Zad1::Move :datatype-) "Zad1/Move")
(setf (get Zad1::Move :request) Zad1::MoveRequest)
(setf (get Zad1::Move :response) Zad1::MoveResponse)

(defmethod Zad1::MoveRequest
  (:response () (instance Zad1::MoveResponse :init)))

(setf (get Zad1::MoveRequest :md5sum-) "ce32e5303119ccbdd2fb5264b03d3f36")
(setf (get Zad1::MoveRequest :datatype-) "Zad1/MoveRequest")
(setf (get Zad1::MoveRequest :definition-)
      "Zad1/Data data
float64[] positions

================================================================================
MSG: Zad1/Data
string name
---
bool success
string message
")

(setf (get Zad1::MoveResponse :md5sum-) "ce32e5303119ccbdd2fb5264b03d3f36")
(setf (get Zad1::MoveResponse :datatype-) "Zad1/MoveResponse")
(setf (get Zad1::MoveResponse :definition-)
      "Zad1/Data data
float64[] positions

================================================================================
MSG: Zad1/Data
string name
---
bool success
string message
")



(provide :Zad1/Move "ce32e5303119ccbdd2fb5264b03d3f36")


