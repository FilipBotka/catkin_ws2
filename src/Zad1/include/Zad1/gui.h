#ifndef GUI_H
#define GUI_H

#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <std_msgs/Int16.h>
#include <Zad1/Move.h>
#include <rrm_msgs/Move.h>

class SrvAbsolute
{
    public:
        SrvAbsolute(ros::NodeHandle& nh);
        ~SrvAbsolute() = default;

        double input(const std::string& jointName);

        void input_absolute();
        void jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg);

        double get_input_absolute(double upper_limit, double lower_limit, const std::string& jointName);
        int input_type();
    private:
        ros::ServiceClient client_;
        ros::NodeHandle nh_;
        ros::Subscriber subscriber_;

        double j1, j2, j3, j4, j5, j6;


        const int joints = 6;
        std::vector<double> positions;

};

class SrvRelative
{
    public:
        SrvRelative(ros::NodeHandle& nh);
        ~SrvRelative() = default;

        void jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg);
        
        double input(const std::string& jointName);
        void input_relative();
        
    private:
        ros::ServiceClient client_;
        ros::NodeHandle nh_;
        ros::Subscriber subscriber_;

        double j1, j2, j3, j4, j5, j6;


        const int joints = 6;
        std::vector<double> positions;

};


#endif