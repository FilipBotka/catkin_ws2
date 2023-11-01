#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include "../include/cv1/robot.h"

int main(int argc, char** argv)
{
    ros::init(argc, argv, "hello_robot");

    ros::NodeHandle nh;
    ros::Publisher position_publisher = nh.advertise<std_msgs::Float64>("positions", 1);

    int joints = 3;
    double position = 0.0;
    int joint_id = 0;

    nh.getParam("joints", joints);
    nh.getParam("position", position);
    nh.getParam("joint_id", joint_id);

    Robot robot(joints);
    robot.move(0.0);
    robot.move(joint_id, position);

    robot.getCurrentPositions(joint_id);


    float pos = 2.0;

    nh.getParam("pos", pos);

    ros::Rate loop_rate(1);
    while (ros::ok()) {
        std_msgs::Float64 msg;
        msg.data = pos;
        position_publisher.publish(msg);
        loop_rate.sleep();
    }



    return 0;
}