;; Auto-generated. Do not edit!


(when (boundp 'rrm_msgs::Move)
  (if (not (find-package "RRM_MSGS"))
    (make-package "RRM_MSGS"))
  (shadow 'Move (find-package "RRM_MSGS")))
(unless (find-package "RRM_MSGS::MOVE")
  (make-package "RRM_MSGS::MOVE"))
(unless (find-package "RRM_MSGS::MOVEREQUEST")
  (make-package "RRM_MSGS::MOVEREQUEST"))
(unless (find-package "RRM_MSGS::MOVERESPONSE")
  (make-package "RRM_MSGS::MOVERESPONSE"))

(in-package "ROS")





(defclass rrm_msgs::MoveRequest
  :super ros::object
  :slots (_positions ))

(defmethod rrm_msgs::MoveRequest
  (:init
   (&key
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _positions __positions)
   self)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(defclass rrm_msgs::MoveResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rrm_msgs::MoveResponse
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

(defclass rrm_msgs::Move
  :super ros::object
  :slots ())

(setf (get rrm_msgs::Move :md5sum-) "dcc6d40667e961b4ed6e622fe794df0c")
(setf (get rrm_msgs::Move :datatype-) "rrm_msgs/Move")
(setf (get rrm_msgs::Move :request) rrm_msgs::MoveRequest)
(setf (get rrm_msgs::Move :response) rrm_msgs::MoveResponse)

(defmethod rrm_msgs::MoveRequest
  (:response () (instance rrm_msgs::MoveResponse :init)))

(setf (get rrm_msgs::MoveRequest :md5sum-) "dcc6d40667e961b4ed6e622fe794df0c")
(setf (get rrm_msgs::MoveRequest :datatype-) "rrm_msgs/MoveRequest")
(setf (get rrm_msgs::MoveRequest :definition-)
      "float64[] positions
---
bool success
string message
")

(setf (get rrm_msgs::MoveResponse :md5sum-) "dcc6d40667e961b4ed6e622fe794df0c")
(setf (get rrm_msgs::MoveResponse :datatype-) "rrm_msgs/MoveResponse")
(setf (get rrm_msgs::MoveResponse :definition-)
      "float64[] positions
---
bool success
string message
")



(provide :rrm_msgs/Move "dcc6d40667e961b4ed6e622fe794df0c")


