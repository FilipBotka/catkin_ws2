;; Auto-generated. Do not edit!


(when (boundp 'cv1::Data)
  (if (not (find-package "CV1"))
    (make-package "CV1"))
  (shadow 'Data (find-package "CV1")))
(unless (find-package "CV1::DATA")
  (make-package "CV1::DATA"))

(in-package "ROS")
;;//! \htmlinclude Data.msg.html


(defclass cv1::Data
  :super ros::object
  :slots (_name _velocity ))

(defmethod cv1::Data
  (:init
   (&key
    ((:name __name) "")
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _velocity (float __velocity))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cv1::Data :md5sum-) "2fd9f71288435c0d2a1acae968c9052e")
(setf (get cv1::Data :datatype-) "cv1/Data")
(setf (get cv1::Data :definition-)
      "string name
float64 velocity
")



(provide :cv1/Data "2fd9f71288435c0d2a1acae968c9052e")


