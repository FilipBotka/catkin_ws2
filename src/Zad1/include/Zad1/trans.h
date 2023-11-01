#ifndef TRANS_H
#define TRANS_H

#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <std_msgs/Int16.h>
#include <rrm_msgs/Move.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Pose.h>
#include <Eigen/Geometry>
#include <eigen_conversions/eigen_msg.h>
#include <tf/transform_broadcaster.h>
#include <tf_conversions/tf_eigen.h>

class Transform
{
    public:
        Transform(const ros::Subscriber& subscriber, ros::NodeHandle& nh);
        Transform(ros::NodeHandle& nh);
        ~Transform() = default;

        void update(const geometry_msgs::Pose& pose);
        void jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg); 
        void calcTransf(const sensor_msgs::JointState::ConstPtr& msg);
    private:
        ros::Subscriber subscriber_;
        ros::Publisher publisher_;
        ros::NodeHandle nh_;

        tf::Transform transform_;

};


#endif