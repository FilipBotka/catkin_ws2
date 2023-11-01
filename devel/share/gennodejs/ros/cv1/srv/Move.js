// Auto-generated. Do not edit!

// (in-package cv1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Data = require('../msg/Data.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.positions = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Data();
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveRequest
    // Serialize message field [data]
    bufferOffset = Data.serialize(obj.data, buffer, bufferOffset);
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.float64(obj.positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveRequest
    let len;
    let data = new MoveRequest(null);
    // Deserialize message field [data]
    data.data = Data.deserialize(buffer, bufferOffset);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Data.getMessageSize(object.data);
    length += 8 * object.positions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cv1/MoveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a050bb6eb78515fa0103ef6c5cb3ffe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cv1/Data data
    float64[] positions
    
    ================================================================================
    MSG: cv1/Data
    string name
    float64 velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveRequest(null);
    if (msg.data !== undefined) {
      resolved.data = Data.Resolve(msg.data)
    }
    else {
      resolved.data = new Data()
    }

    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = []
    }

    return resolved;
    }
};

class MoveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveResponse
    let len;
    let data = new MoveResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cv1/MoveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveRequest,
  Response: MoveResponse,
  md5sum() { return 'ce32e5303119ccbdd2fb5264b03d3f36'; },
  datatype() { return 'cv1/Move'; }
};
