;; Auto-generated. Do not edit!


(when (boundp 'cv1::Move)
  (if (not (find-package "CV1"))
    (make-package "CV1"))
  (shadow 'Move (find-package "CV1")))
(unless (find-package "CV1::MOVE")
  (make-package "CV1::MOVE"))
(unless (find-package "CV1::MOVEREQUEST")
  (make-package "CV1::MOVEREQUEST"))
(unless (find-package "CV1::MOVERESPONSE")
  (make-package "CV1::MOVERESPONSE"))

(in-package "ROS")





(defclass cv1::MoveRequest
  :super ros::object
  :slots (_data _positions ))

(defmethod cv1::MoveRequest
  (:init
   (&key
    ((:data __data) (instance cv1::Data :init))
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
    ;; cv1/Data _data
    (send _data :serialization-length)
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cv1/Data _data
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
   ;; cv1/Data _data
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

(defclass cv1::MoveResponse
  :super ros::object
  :slots (_success _message ))

(defmethod cv1::MoveResponse
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

(defclass cv1::Move
  :super ros::object
  :slots ())

(setf (get cv1::Move :md5sum-) "ce32e5303119ccbdd2fb5264b03d3f36")
(setf (get cv1::Move :datatype-) "cv1/Move")
(setf (get cv1::Move :request) cv1::MoveRequest)
(setf (get cv1::Move :response) cv1::MoveResponse)

(defmethod cv1::MoveRequest
  (:response () (instance cv1::MoveResponse :init)))

(setf (get cv1::MoveRequest :md5sum-) "ce32e5303119ccbdd2fb5264b03d3f36")
(setf (get cv1::MoveRequest :datatype-) "cv1/MoveRequest")
(setf (get cv1::MoveRequest :definition-)
      "cv1/Data data
float64[] positions

================================================================================
MSG: cv1/Data
string name
---
bool success
string message
")

(setf (get cv1::MoveResponse :md5sum-) "ce32e5303119ccbdd2fb5264b03d3f36")
(setf (get cv1::MoveResponse :datatype-) "cv1/MoveResponse")
(setf (get cv1::MoveResponse :definition-)
      "cv1/Data data
float64[] positions

================================================================================
MSG: cv1/Data
string name
---
bool success
string message
")



(provide :cv1/Move "ce32e5303119ccbdd2fb5264b03d3f36")


