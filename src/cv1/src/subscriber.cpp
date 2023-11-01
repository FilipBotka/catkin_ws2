#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <std_srvs/Trigger.h>
#include <cv1/Move.h>

bool func(cv1::Move::Request &req, cv1::Move::Response &res) {
    ROS_INFO("I receive data - name: %s velocity: %f", req.data.name.c_str(), req.data.velocity);
    res.success = true;
    res.message = "Sended message";
    return true;
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "example");

    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("server_robot", func);
    ros::spin();


}