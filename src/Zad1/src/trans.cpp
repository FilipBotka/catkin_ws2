#include "../include/Zad1/trans.h"

Transform::Transform(ros::NodeHandle& nh)
    : nh_(nh)
{
    publisher_ = nh.advertise<geometry_msgs::Pose>("tool_pose",2);

    subscriber_ = nh.subscribe<sensor_msgs::JointState>("joint_states", 10, &Transform::jointStateCallback, this);

}

void Transform::update(const geometry_msgs::Pose& pose)
{
    publisher_.publish(pose);

}

void Transform::jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg)
{
    for (size_t i = 0; i < msg->position.size(); ++i) {
        ROS_INFO("Joint %zu: %f", i + 1, msg->position[i]);
    }

    this->calcTransf(msg);
}

void Transform::calcTransf(const sensor_msgs::JointState::ConstPtr& msg)
{
    double x = 1;
    double y = 0.5;
    double z = 0.1;

    double joint1 = msg->position[0];
    double joint2 = msg->position[1];
    double joint3 = msg->position[2];
    double joint4 = msg->position[3];
    double joint5 = msg->position[4];
    double joint6 = msg->position[5];

    double link1;
    double link2;
    double link3;
    double link4;
    double link5;
    double link6;

    nh_.getParam("link1", link1);
    nh_.getParam("link2", link2);
    nh_.getParam("link3", link3);
    nh_.getParam("link4", link4);
    nh_.getParam("link5", link5);
    nh_.getParam("link6", link6);

    Eigen::MatrixXd j1(4,4);
    j1 <<  cos(joint1), -sin(joint1), 0, 0,
          sin(joint1), cos(joint1), 0, 0,
          0, 0, 1, link1,
          0, 0, 0, 1;
    //ROS_INFO_STREAM("j1:\n" << j1);

    Eigen::MatrixXd j2(4,4);
    j2 <<  cos(joint2), 0, sin(joint2), 0,
          0, 1, 0, 0,
          -sin(joint2), 0, cos(joint2), link2,
          0, 0, 0, 1;
    //ROS_INFO_STREAM("j2:\n" << j2);

    Eigen::MatrixXd j3(4,4);
    j3 <<  cos(joint3), 0, sin(joint3), 0,
          0, 1, 0, 0,
          -sin(joint3), 0, cos(joint3), link3,
          0, 0, 0, 1;
    //ROS_INFO_STREAM("j3:\n" << j3);

    Eigen::MatrixXd j4(4,4);
    j4 <<  cos(joint4), -sin(joint4), 0, 0,
          sin(joint4), cos(joint4), 0, 0,
          0, 0, 1, link4,
          0, 0, 0, 1;
    //ROS_INFO_STREAM("j4:\n" << j4);

    Eigen::MatrixXd j5(4,4);
    j5 <<  cos(joint5), 0, sin(joint5), 0,
          0, 1, 0, 0,
          -sin(joint5), 0, cos(joint5), link5,
          0, 0, 0, 1;
    //ROS_INFO_STREAM("j5:\n" << j5);

    Eigen::Matrix4d j6(4,4);
    j6 <<  cos(joint6), -sin(joint6), 0, 0,
          sin(joint6), cos(joint6), 0, 0,
          0, 0, 1, link6,
          0, 0, 0, 1;
    //ROS_INFO_STREAM("j6:\n" << j6);

    //Eigen::Matrix4d transMatrix = (j1 * j2 * j3 * j4 * j5 * j6); 
    /* Eigen::Matrix vec;
    vec << 0,
            0,
            0.203,
            1; */

    Eigen::Matrix4d transMatrix = (j1 * j2 * j3 * j4 * j5 * j6); 
    //Eigen::Matrix4d transMatrix2 = transMatrix * vec; 

    ROS_INFO_STREAM("j1 * j2 * j3 * j4 * j5 * j6= \n" << (j1 * j2 * j3 * j4 * j5 * j6));


    Eigen::Affine3d e_pose(transMatrix);
    tf::TransformBroadcaster br;

    geometry_msgs::Pose pose;
    tf::poseEigenToMsg(e_pose, pose);

    tf::Transform transform;
    tf::poseEigenToTF(e_pose, transform);
    
    this->transform_ = transform;
    
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "tool0_calc"));
        loop_rate.sleep();
        ros::spinOnce(); 
    }
    

    /* Eigen::Affine3d e_pose(transMatrix);
    tf::Transform transform;
    tf::poseEigenToTF(e_pose, transform);
 */


  /*   Eigen::Quaterniond quaternion(transMatrix.block<3, 3>(0,0));
    Eigen::Vector3d translation(transMatrix.block<3, 1>(0, 3));

    std::cout << "Quaternion: " << quaternion.coeffs().transpose() << std::endl;
    std::cout << "Translation: " << translation.transpose() << std::endl; */

    /* geometry_msgs::Pose pose;

    pose.orientation.x = quaternion.x();
    pose.orientation.y = quaternion.y();
    pose.orientation.z = quaternion.z();
    pose.orientation.w = quaternion.w();

    pose.position.x = translation[0];
    pose.position.y = translation[1];
    pose.position.z = translation[2]; */

    this->update(pose);
}