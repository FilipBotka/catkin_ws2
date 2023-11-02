#include "../include/Zad1/pub.h"

Publisher::Publisher(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr)
    :nh_(nh), wrapper_ptr_(wrapper_ptr)
{
    publisher_ = nh_.advertise<sensor_msgs::JointState>("joint_states", 2);
    publisher_thread = std::thread(&Publisher::publish, this);

}

void Publisher::publish()
{
    ros::Rate loop_rate(1);

    while (ros::ok())
    {
        this->update();
        loop_rate.sleep();
    }

    this->publisher_thread.join();
    
}

void Publisher::update()
{   
    double j1, j2, j3, j4, j5, j6;
    std::vector<double> pos = {j1, j2, j3, j4, j5, j6};
    std::vector<double> wrapperPos;

    wrapperPos = wrapper_ptr_->getVector();

    for (size_t i = 0; i < 6; i++)
    {
        pos[i] = wrapperPos[i];
    }
    

    
    sensor_msgs::JointState state_msg;

    state_msg.header.frame_id = "base_link";
    state_msg.header.stamp = ros::Time::now();
    state_msg.name = {"joint_1", "joint_2", "joint_3", "joint_4", "joint_5", "joint_6"};
    state_msg.position = {pos[0], pos[1], pos[2], pos[3], pos[4], pos[5]};

    publisher_.publish(state_msg);
}

SrvRelative::SrvRelative(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr)
    :nh_(nh), wrapper_ptr_(wrapper_ptr)
{
    srv_relative_ = nh.advertiseService("move_relative", &SrvRelative::func, this);
    std::cout << "move_relative service created" << std::endl;

    rrm_msgs::Move pose;

    if (pose.request.positions.size())
    {
    
    }
}

bool SrvRelative::func(rrm_msgs::Move::Request &req, rrm_msgs::Move::Response &res)
{
    double j1, j2, j3, j4, j5, j6;
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

    j1 = wrapper_ptr_->joint1;
    j2 = wrapper_ptr_->joint2;
    j3 = wrapper_ptr_->joint3;
    j4 = wrapper_ptr_->joint4;
    j5 = wrapper_ptr_->joint5;
    j6 = wrapper_ptr_->joint6;

    std::vector<double> paramsUp = {j1up, j2up, j3up, j4up, j5up, j6up};
    std::vector<double> paramsDown = {j1down, j2down, j3down, j4down, j5down, j6down};
    std::vector<double> joints = wrapper_ptr_->getVector();
    std::vector<double> joint = {0, 0, 0, 0, 0, 0};

    int counter = 0;

    for (size_t i = 0; i < req.positions.size(); i++)
    {
        if ((req.positions[i] + joints[i]) < paramsDown[i] || (req.positions[i] + joints[i]) > paramsUp[i])
        {
            res.success = false;
            res.message = "Parameter outside the bounds";
            break;
        }
        else
        {
            joint[i] = (req.positions[i] + joints[i]);
            res.success = true;
            res.message = "Sended message";
        }
        counter = counter + 1;
    }

    if (counter == 6)
    {
        wrapper_ptr_->setVector(joint);
    }


    return true;
}


SrvAbsolut::SrvAbsolut(ros::NodeHandle& nh, std::shared_ptr<Wrapper> wrapper_ptr)
    :nh_(nh), wrapper_ptr_(wrapper_ptr)
{
    srv_absolute_ = nh.advertiseService("move_absolute", &SrvAbsolut::func, this);
    std::cout << "move_absolute service created" << std::endl;
}

bool SrvAbsolut::func(rrm_msgs::Move::Request &req, rrm_msgs::Move::Response &res)
{
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

    std::vector<double> paramsDown = {j1down, j2down, j3down, j4down, j5down, j6down};
    std::vector<double> paramsUp = {j1up, j2up, j3up, j4up, j5up, j6up};
    std::vector<double> joints = {0, 0, 0, 0, 0, 0};

    int counter = 0;

    for (size_t i = 0; i < req.positions.size(); i++)
    {
        if (req.positions[i] < paramsDown[i] || req.positions[i] > paramsUp[i])
        {
            res.success = false;
            res.message = "Parameter outside the bounds";
            break;
        }
        else
        {
            joints[i] = req.positions[i];
            res.success = true;
            res.message = "Sended message";
        }
        counter = counter + 1;
    }

    if (counter == 6)
    {
        wrapper_ptr_->setVector(joints);
    }

    return true;
}


Wrapper::Wrapper()
{
    wrapperPositions[0] = 0.0;
    wrapperPositions[1] = 0.0;
    wrapperPositions[2] = 0.0;
    wrapperPositions[3] = 0.0;
    wrapperPositions[4] = 0.0;
    wrapperPositions[5] = 0.0;

}

std::vector<double> Wrapper::getVector()
{
    std::lock_guard<std::mutex> lock(mutex);

    return wrapperPositions;
}

void Wrapper::setVector(std::vector<double> j_pos)
{
    std::lock_guard<std::mutex> lock(mutex);

    for(int i=0; i<6; i++)
    {
        wrapperPositions[i] = j_pos[i];
    }
}
