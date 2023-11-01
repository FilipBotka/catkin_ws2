// Generated by gencpp from file Zad1/Move.msg
// DO NOT EDIT!


#ifndef ZAD1_MESSAGE_MOVE_H
#define ZAD1_MESSAGE_MOVE_H

#include <ros/service_traits.h>


#include <Zad1/MoveRequest.h>
#include <Zad1/MoveResponse.h>


namespace Zad1
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
} // namespace Zad1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::Zad1::Move > {
  static const char* value()
  {
    return "ce32e5303119ccbdd2fb5264b03d3f36";
  }

  static const char* value(const ::Zad1::Move&) { return value(); }
};

template<>
struct DataType< ::Zad1::Move > {
  static const char* value()
  {
    return "Zad1/Move";
  }

  static const char* value(const ::Zad1::Move&) { return value(); }
};


// service_traits::MD5Sum< ::Zad1::MoveRequest> should match
// service_traits::MD5Sum< ::Zad1::Move >
template<>
struct MD5Sum< ::Zad1::MoveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::Zad1::Move >::value();
  }
  static const char* value(const ::Zad1::MoveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::Zad1::MoveRequest> should match
// service_traits::DataType< ::Zad1::Move >
template<>
struct DataType< ::Zad1::MoveRequest>
{
  static const char* value()
  {
    return DataType< ::Zad1::Move >::value();
  }
  static const char* value(const ::Zad1::MoveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::Zad1::MoveResponse> should match
// service_traits::MD5Sum< ::Zad1::Move >
template<>
struct MD5Sum< ::Zad1::MoveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::Zad1::Move >::value();
  }
  static const char* value(const ::Zad1::MoveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::Zad1::MoveResponse> should match
// service_traits::DataType< ::Zad1::Move >
template<>
struct DataType< ::Zad1::MoveResponse>
{
  static const char* value()
  {
    return DataType< ::Zad1::Move >::value();
  }
  static const char* value(const ::Zad1::MoveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ZAD1_MESSAGE_MOVE_H
