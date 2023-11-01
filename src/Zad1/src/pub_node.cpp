#include "../include/Zad1/pub.h"
//#include <sensor_msgs/JointState.h>
//#include <Zad1/Move.h>
//#include <rrm_msgs/Move.h>

class Publisher;
class Wrapper;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pub_node");
    ros::NodeHandle nh;

    std::shared_ptr<Wrapper> wrapper_ptr = std::make_shared<Wrapper>();

    Publisher pub_obj(nh, wrapper_ptr);

    SrvRelative srv_relat(nh, wrapper_ptr); 
    SrvAbsolut srv_abs(nh, wrapper_ptr);
    
    ros::Rate loop_rate(1);
    
    while (ros::ok())
    {
        pub_obj.update();
        
        loop_rate.sleep();
        ros::spinOnce();
    }

    return 0;

}