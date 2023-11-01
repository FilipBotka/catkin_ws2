#include "../include/cv1/robot.h"
#include <ros/ros.h>
#include <stdexcept>

Robot::Robot(int num_joints)
        : num_joints(num_joints)
{
    if(num_joints<=0 || num_joints>7)
    {
        throw std::invalid_argument("Invalid argument number of joints[ " +
        std::to_string(num_joints) + "]. Parameter must be non-negative or smaller than 8");
        
    }

    this->pos.reserve(num_joints);

    ROS_INFO("Robot has %d joints", num_joints);
}

int Robot::getJoints() const
{
    return num_joints;
}

std::vector<double> Robot::getCurrentPosition() const
{
    return pos;
}

double Robot::getCurrentPositions(int joint_id) const
{   
    std::cout << "Position of joint "<< joint_id << " is " << pos[joint_id] << std::endl;
    return pos[joint_id];
}

void Robot::move(const double &position)
{
    for(int i=0; i<pos.size(); i++)
    {
        pos[i] = position;
    }
}

void Robot::move(int joint_id, int joint_value)
{
    if(joint_id<0 || joint_id>=num_joints)
    {
        throw std::invalid_argument("Invalid argument number of joints[ " +
        std::to_string(joint_id) + "]. Parameter must be non-negative or smaller than [ " +
        std::to_string(num_joints) + "]");
    }

    pos[joint_id] = joint_value;
}
