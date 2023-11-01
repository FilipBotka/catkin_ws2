#ifndef PUB_H
#define PUB_H

#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <std_msgs/Int16.h>
#include <rrm_msgs/Move.h>

#include "robot.h"

class Wrapper;

class Publisher
{
    public:
        Publisher(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr);
        ~Publisher() = default;

        void update();
        void timerCallback(const ros::TimerEvent&);
    private:
        ros::Publisher publisher_;
        ros::NodeHandle nh_;
        ros::Timer timer_;
        
        std::shared_ptr<Wrapper> wrapper_ptr_;
};

class SrvRelative
{
    public:
        SrvRelative(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr);
        ~SrvRelative() = default;

        bool func(rrm_msgs::Move::Request &req, rrm_msgs::Move::Response &res); 
    private:
        ros::ServiceServer srv_relative_;
        ros::NodeHandle nh_;

        std::shared_ptr<Wrapper> wrapper_ptr_;
};

class SrvAbsolut
{
    public:
        SrvAbsolut(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr);
        ~SrvAbsolut() = default;

        bool func(rrm_msgs::Move::Request &req, rrm_msgs::Move::Response &res); 
    private:
        ros::ServiceServer srv_absolute_;
        ros::NodeHandle nh_;

        std::shared_ptr<Wrapper> wrapper_ptr_;
};

class Wrapper
{

    public:
        Wrapper();
        ~Wrapper() = default;

        double joint1, joint2, joint3, joint4, joint5, joint6;

        std::vector<double> wrapperPositions;

    private:


};

#endif