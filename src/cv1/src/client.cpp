#include <ros/ros.h>
#include <cv1/Move.h>



int main(int argc, char** argv)
{
    ros::init(argc, argv, "hello_client");

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<cv1::Move>("server_robot");

    cv1::Move srv;

    srv.request.data.name = "name";
    srv.request.data.velocity = 2.0;

    if(client.call(srv))
    {
        ROS_INFO("result: %s", srv.response.message.c_str());

    }
    else
    {
        ROS_ERROR("Failed to call service");
        return 1;
    }


    return 0;


}