; Auto-generated. Do not edit!


(cl:in-package rrm_msgs-srv)


;//! \htmlinclude Move-request.msg.html

(cl:defclass <Move-request> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Move-request (<Move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rrm_msgs-srv:<Move-request> is deprecated: use rrm_msgs-srv:Move-request instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrm_msgs-srv:positions-val is deprecated.  Use rrm_msgs-srv:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-request>) ostream)
  "Serializes a message object of type '<Move-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-request>) istream)
  "Deserializes a message object of type '<Move-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-request>)))
  "Returns string type for a service object of type '<Move-request>"
  "rrm_msgs/MoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-request)))
  "Returns string type for a service object of type 'Move-request"
  "rrm_msgs/MoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-request>)))
  "Returns md5sum for a message object of type '<Move-request>"
  "dcc6d40667e961b4ed6e622fe794df0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-request)))
  "Returns md5sum for a message object of type 'Move-request"
  "dcc6d40667e961b4ed6e622fe794df0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-request>)))
  "Returns full string definition for message of type '<Move-request>"
  (cl:format cl:nil "float64[] positions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-request)))
  "Returns full string definition for message of type 'Move-request"
  (cl:format cl:nil "float64[] positions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-request
    (cl:cons ':positions (positions msg))
))
;//! \htmlinclude Move-response.msg.html

(cl:defclass <Move-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Move-response (<Move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rrm_msgs-srv:<Move-response> is deprecated: use rrm_msgs-srv:Move-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrm_msgs-srv:success-val is deprecated.  Use rrm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrm_msgs-srv:message-val is deprecated.  Use rrm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-response>) ostream)
  "Serializes a message object of type '<Move-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-response>) istream)
  "Deserializes a message object of type '<Move-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-response>)))
  "Returns string type for a service object of type '<Move-response>"
  "rrm_msgs/MoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-response)))
  "Returns string type for a service object of type 'Move-response"
  "rrm_msgs/MoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-response>)))
  "Returns md5sum for a message object of type '<Move-response>"
  "dcc6d40667e961b4ed6e622fe794df0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-response)))
  "Returns md5sum for a message object of type 'Move-response"
  "dcc6d40667e961b4ed6e622fe794df0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-response>)))
  "Returns full string definition for message of type '<Move-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-response)))
  "Returns full string definition for message of type 'Move-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Move)))
  'Move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Move)))
  'Move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move)))
  "Returns string type for a service object of type '<Move>"
  "rrm_msgs/Move")