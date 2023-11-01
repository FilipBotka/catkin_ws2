#include "../include/Zad1/gui.h"
#include <rrm_msgs/Move.h>


Srv::Srv(ros::NodeHandle& nh)
    : nh_(nh)
{
    client_ = nh_.serviceClient<rrm_msgs::Move>("move_absolut");
    subscriber_ = nh.subscribe<sensor_msgs::JointState>("joint_states", 10, &Srv::jointStateCallback, this);

    j1 = 0.0;
    j2 = 0.0;
    j3 = 0.0;
    j4 = 0.0;
    j5 = 0.0;
    j6 = 0.0;
}

void Srv::jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg)
{
    for (size_t i = 0; i < msg->position.size(); ++i) {
        ROS_INFO("Joint %zu: %f", i + 1, msg->position[i]);

    }

    this->j1 = msg->position[0];
    this->j2 = msg->position[1];
    this->j3 = msg->position[2];
    this->j4 = msg->position[3];
    this->j5 = msg->position[4];
    this->j6 = msg->position[5];
}

void Srv::input_absolute()
{
    rrm_msgs::Move srv;

    double j1up, j2up, j3up, j4up, j5up, j6up;
    double j1down, j2down, j3down, j4down, j5down, j6down;

    //double j1, j2, j3, j4, j5, j6;

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

    /* this->j1 = this->get_input_absolute(j1up, j1down, "joint1");
    this->j2 = this->get_input_absolute(j2up, j2down, "joint2");
    this->j3 = this->get_input_absolute(j3up, j3down, "joint3");
    this->j4 = this->get_input_absolute(j4up, j4down, "joint4");
    this->j5 = this->get_input_absolute(j5up, j5down, "joint5");
    this->j6 = this->get_input_absolute(j6up, j6down, "joint6"); */

    this->j1 = this->input("joint1"); 
    this->j2 = this->input("joint2");
    this->j3 = this->input("joint3");
    this->j4 = this->input("joint4");
    this->j5 = this->input("joint5");
    this->j6 = this->input("joint6");

    srv.request.positions = {j1, j2, j3, j4, j5, j6};

    if(client_.call(srv))
    {
        ROS_INFO("result: %s", srv.response.message.c_str());

    }
    else
    {
        ROS_ERROR("Failed to call service");
    }

}


double Srv::get_input_absolute(double upper_limit, double lower_limit, const std::string& jointName)
{
    double num;

    while (true) {
        std::cout << "Enter value for " << jointName << ": ";
        std::cin >> num;

        if (num >= lower_limit && num <= upper_limit) {
            this->positions.push_back(num);
            break;
        } else {
            std::cout << "Invalid input! Value must be between " << lower_limit << " and " << upper_limit << std::endl;
            
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }
    }

    return num;
}


void Srv::input_relative()
{
    rrm_msgs::Move srv;

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

    this->j1 = this->get_input_relative(j1up, j1down, "joint1", j1);
    this->j2 = this->get_input_relative(j2up, j2down, "joint2", j2);
    this->j3 = this->get_input_relative(j3up, j3down, "joint3", j3);
    this->j4 = this->get_input_relative(j4up, j4down, "joint4", j4);
    this->j5 = this->get_input_relative(j5up, j5down, "joint5", j5);
    this->j6 = this->get_input_relative(j6up, j6down, "joint6", j6);

    srv.request.positions = {j1, j2, j3, j4, j5, j6};

    if(client_.call(srv))
    {
        ROS_INFO("result: %s", srv.response.message.c_str());

    }
    else
    {
        ROS_ERROR("Failed to call service");
    }

}

double Srv::get_input_relative(double upper_limit, double lower_limit, const std::string& jointName, double joint)
{
    double num;

    while (true) {
        std::cout << "Enter value for " << jointName << ": ";
        std::cout << "(Remember that you are doing relative move, actual position " << joint << ")";
        std::cin >> num;

        if (num >= lower_limit && num <= upper_limit) {
            this->positions.push_back(num);
            break;
        } else {
            std::cout << "Invalid input! Value must be between " << lower_limit << " and " << upper_limit << std::endl;
            
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }
    }

    return num;
}

int Srv::input_type()
{
    int num;

    while (true)
    {
        std::cout << "If you want to do Absolute move press 0" << std::endl;
        std::cout << "If you want to do Relative move press 1" << std::endl;
        std::cin >> num;

        if (num == 0 || num == 1)
        {
            break;
        }
        else
        {
            std::cout << "You gave wrong number, try again" << std::endl;
        }
        
    }
    

    return num;
}


double Srv::input(const std::string& jointName)
{
    double joint_pos;

    std::cout << "enter position for joint: " << jointName << std::endl;
    std::cin >> joint_pos;


    return joint_pos;
}