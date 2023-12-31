// Generated by gencpp from file Zad1/MoveResponse.msg
// DO NOT EDIT!


#ifndef ZAD1_MESSAGE_MOVERESPONSE_H
#define ZAD1_MESSAGE_MOVERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Zad1
{
template <class ContainerAllocator>
struct MoveResponse_
{
  typedef MoveResponse_<ContainerAllocator> Type;

  MoveResponse_()
    : success(false)
    , message()  {
    }
  MoveResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::Zad1::MoveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Zad1::MoveResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MoveResponse_

typedef ::Zad1::MoveResponse_<std::allocator<void> > MoveResponse;

typedef boost::shared_ptr< ::Zad1::MoveResponse > MoveResponsePtr;
typedef boost::shared_ptr< ::Zad1::MoveResponse const> MoveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Zad1::MoveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Zad1::MoveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Zad1::MoveResponse_<ContainerAllocator1> & lhs, const ::Zad1::MoveResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Zad1::MoveResponse_<ContainerAllocator1> & lhs, const ::Zad1::MoveResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Zad1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::Zad1::MoveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Zad1::MoveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Zad1::MoveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Zad1::MoveResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Zad1::MoveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Zad1::MoveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Zad1::MoveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::Zad1::MoveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::Zad1::MoveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Zad1/MoveResponse";
  }

  static const char* value(const ::Zad1::MoveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Zad1::MoveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
;
  }

  static const char* value(const ::Zad1::MoveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Zad1::MoveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Zad1::MoveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Zad1::MoveResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZAD1_MESSAGE_MOVERESPONSE_H
