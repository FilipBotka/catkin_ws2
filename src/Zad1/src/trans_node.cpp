#include "../include/Zad1/trans.h"

int main(int argc, char** argv) {
   
    ros::init(argc, argv, "joint_state_subscriber");

    ros::NodeHandle nh;
    Transform trans(nh);

    tf::TransformBroadcaster br;

    ros::spin();

    return 0;
}