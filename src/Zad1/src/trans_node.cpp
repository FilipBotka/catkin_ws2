#include "../include/Zad1/trans.h"

/* 
    CO ESTE TREBA DOROBIT NA ZADANI:
1. Spravit move_relative - posunie sa o zadany uhol oproti zaciatocnej polohe
2. Osetrit vstup na zadavanie polohy

3. Dorobit zvysok klbov v URDF - Skoro hotove, nejake bugy - treba sa opytat


    BONUS:
Spravit Threads

 */

int main(int argc, char** argv) {
   
    ros::init(argc, argv, "joint_state_subscriber");

    ros::NodeHandle nh;
    Transform trans(nh);

    tf::TransformBroadcaster br;

    /* ros::Rate loop_rate(10);
    while(ros::ok())
    {
        br.sendTransform(tf::StampedTransform(trans.transform_, ros::Time::now(), "base_link", "tool0_calc"));
        loop_rate.sleep();
    }
 */
    ros::spin();

    return 0;
}