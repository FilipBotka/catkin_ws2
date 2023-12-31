// Generated by gencpp from file cv1/Move.msg
// DO NOT EDIT!


#ifndef CV1_MESSAGE_MOVE_H
#define CV1_MESSAGE_MOVE_H

#include <ros/service_traits.h>


#include <cv1/MoveRequest.h>
#include <cv1/MoveResponse.h>


namespace cv1
{

struct Move
{

typedef MoveRequest Request;
typedef MoveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Move
} // namespace cv1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cv1::Move > {
  static const char* value()
  {
    return "ce32e5303119ccbdd2fb5264b03d3f36";
  }

  static const char* value(const ::cv1::Move&) { return value(); }
};

template<>
struct DataType< ::cv1::Move > {
  static const char* value()
  {
    return "cv1/Move";
  }

  static const char* value(const ::cv1::Move&) { return value(); }
};


// service_traits::MD5Sum< ::cv1::MoveRequest> should match
// service_traits::MD5Sum< ::cv1::Move >
template<>
struct MD5Sum< ::cv1::MoveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cv1::Move >::value();
  }
  static const char* value(const ::cv1::MoveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cv1::MoveRequest> should match
// service_traits::DataType< ::cv1::Move >
template<>
struct DataType< ::cv1::MoveRequest>
{
  static const char* value()
  {
    return DataType< ::cv1::Move >::value();
  }
  static const char* value(const ::cv1::MoveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cv1::MoveResponse> should match
// service_traits::MD5Sum< ::cv1::Move >
template<>
struct MD5Sum< ::cv1::MoveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cv1::Move >::value();
  }
  static const char* value(const ::cv1::MoveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cv1::MoveResponse> should match
// service_traits::DataType< ::cv1::Move >
template<>
struct DataType< ::cv1::MoveResponse>
{
  static const char* value()
  {
    return DataType< ::cv1::Move >::value();
  }
  static const char* value(const ::cv1::MoveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CV1_MESSAGE_MOVE_H
