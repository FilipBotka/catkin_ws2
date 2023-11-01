#include "../include/Zad1/gui.h"
#include <rrm_msgs/Move.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "client_gui");

    ros::NodeHandle nh;
    Srv srv_client(nh);

    int input;

    input = srv_client.input_type();

    if (input == 0)
    {
        srv_client.input_absolute();
    }
    else
    {
        srv_client.input_relative();
    }

    return 0;

}