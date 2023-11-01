#include "../include/Zad1/pub.h"

Publisher::Publisher(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr)
    :nh_(nh), wrapper_ptr_(wrapper_ptr)
{
    publisher_ = nh_.advertise<sensor_msgs::JointState>("joint_states", 2);
    timer_ = nh_.createTimer(ros::Duration(1.0), &Publisher::timerCallback, this);

}

double num = 0.0;

void Publisher::update()
{   
    double j1, j2, j3, j4, j5, j6;

    j1 = wrapper_ptr_->joint1;
    j2 = wrapper_ptr_->joint2;
    j3 = wrapper_ptr_->joint3;
    j4 = wrapper_ptr_->joint4;
    j5 = wrapper_ptr_->joint5;
    j6 = wrapper_ptr_->joint6;
    
    sensor_msgs::JointState state_msg;

    state_msg.header.frame_id = "base_link";
    state_msg.header.stamp = ros::Time::now();
    state_msg.name = {"joint_1", "joint_2", "joint_3", "joint_4", "joint_5", "joint_6"};
    state_msg.position = {j1, j2, j3, j4, j5, j6};

    publisher_.publish(state_msg);

    num = num + 0.03;
}

void Publisher::timerCallback(const ros::TimerEvent&)
{
    //this->update();
}


SrvRelative::SrvRelative(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr)
    :nh_(nh), wrapper_ptr_(wrapper_ptr)
{
    srv_relative_ = nh.advertiseService("move_absolut", &SrvRelative::func, this);
    std::cout << "move_absolut service created" << std::endl;

    rrm_msgs::Move pose;

    if (pose.request.positions.size())
    {
    
    }
}

bool SrvRelative::func(rrm_msgs::Move::Request &req, rrm_msgs::Move::Response &res)
{
   for(int i=0; i<req.positions.size(); i++)
    {
        ROS_INFO_STREAM("Positions recieved " << req.positions[i]);
    }
    

    /* wrapper_ptr_->joint1 = req.positions[0];
    wrapper_ptr_->joint2 = req.positions[1];
    wrapper_ptr_->joint3 = req.positions[2];
    wrapper_ptr_->joint4 = req.positions[3];
    wrapper_ptr_->joint5 = req.positions[4];
    wrapper_ptr_->joint6 = req.positions[5];
 */
    std::vector<double> joints = {wrapper_ptr_->joint1, wrapper_ptr_->joint2, wrapper_ptr_->joint3, wrapper_ptr_->joint4, wrapper_ptr_->joint5, wrapper_ptr_->joint6};

   /*  res.success = true;
    res.message = "Sended message"; */

    double j1up, j2up, j3up, j4up, j5up, j6up;
    double j1down, j2down, j3down, j4down, j5down, j6down;

    nh_.getParam("joint1/up", j1up);
    nh_.getParam("joint2/up", j2up);
    nh_.getParam("joint3/up", j3up);
    nh_.getParam("joint4/up", j4up);
    nh_.getParam("joint5/up", j5up);
    nh_.getParam("joint6/up", j6up);

    std::vector<double> paramsUp = {j1up, j2up, j3up, j4up, j5up, j6up};

    nh_.getParam("joint1/down", j1down);
    nh_.getParam("joint2/down", j2down);
    nh_.getParam("joint3/down", j3down);
    nh_.getParam("joint4/down", j4down);
    nh_.getParam("joint5/down", j5down);
    nh_.getParam("joint6/down", j6down);

    std::vector<double> paramsDown = {j1down, j2down, j3down, j4down, j5down, j6down};

    for (size_t i = 0; i < req.positions.size(); i++)
    {
        if (req.positions[i] < paramsDown[i] || req.positions[i] > paramsUp[i])
        {
            res.success = false;
            res.message = "Parameter outsiede the bounds";
            break;
        }
        else
        {
            joints[i] = req.positions[i];
            res.success = true;
            res.message = "Sended message";
        }
        
    }

    return true;
}


SrvAbsolut::SrvAbsolut(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr)
    :nh_(nh), wrapper_ptr_(wrapper_ptr)
{
    srv_absolute_ = nh.advertiseService("move_relative", &SrvAbsolut::func, this);
    std::cout << "move_relative service created" << std::endl;
}

bool SrvAbsolut::func(rrm_msgs::Move::Request &req, rrm_msgs::Move::Response &res)
{
    for(int i=0; i<req.positions.size(); i++)
    {
        ROS_INFO_STREAM("Positions recieved " << req.positions[i]);
    }
    

    /* wrapper_ptr_->joint1 = req.positions[0];
    wrapper_ptr_->joint2 = req.positions[1];
    wrapper_ptr_->joint3 = req.positions[2];
    wrapper_ptr_->joint4 = req.positions[3];
    wrapper_ptr_->joint5 = req.positions[4];
    wrapper_ptr_->joint6 = req.positions[5];

   
    res.success = true;
    res.message = "Sended message"; */

    double j1up, j2up, j3up, j4up, j5up, j6up;
    double j1down, j2down, j3down, j4down, j5down, j6down;

    nh_.getParam("joint1/up", j1up);
    nh_.getParam("joint2/up", j2up);
    nh_.getParam("joint3/up", j3up);
    nh_.getParam("joint4/up", j4up);
    nh_.getParam("joint5/up", j5up);
    nh_.getParam("joint6/up", j6up);

    nh_.getParam("joint1/down", j1down);
    nh_.getParam("joint2/down", j2down);
    nh_.getParam("joint3/down", j3down);
    nh_.getParam("joint4/down", j4down);
    nh_.getParam("joint5/down", j5down);
    nh_.getParam("joint6/down", j6down);

    std::vector<double> paramsUp = {j1up, j2up, j3up, j4up, j5up, j6up};
    std::vector<double> paramsDown = {j1down, j2down, j3down, j4down, j5down, j6down};
    std::vector<double> joints = {wrapper_ptr_->joint1, wrapper_ptr_->joint2, wrapper_ptr_->joint3, wrapper_ptr_->joint4, wrapper_ptr_->joint5, wrapper_ptr_->joint6};

    for (size_t i = 0; i < req.positions.size(); i++)
    {
        if (req.positions[i] < paramsDown[i] || req.positions[i] > paramsUp[i])
        {
            res.success = false;
            res.message = "Parameter outsiede the bounds";
            break;
        }
        else
        {
            joints[i] = req.positions[i];
        }
        
    }

    res.success = true;
    res.message = "Sended message";
    return true;
}


Wrapper::Wrapper()
{
    this->joint1 = 0.0;
    this->joint2 = 0.0;
    this->joint3 = 0.0;
    this->joint4 = 0.0;
    this->joint5 = 0.0;
    this->joint6 = 0.0;
}