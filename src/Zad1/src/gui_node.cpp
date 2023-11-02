#include "../include/Zad1/gui.h"

int main(int argc, char** argv)
{
    ros::init(argc, argv, "client_gui");

    ros::NodeHandle nh;
    SrvAbsolute srvAbsolute(nh);
    SrvRelative srvRelative(nh);

    int input;

    input = srvAbsolute.input_type();

    if (input == 0)
    {
        srvAbsolute.input_absolute();
    }
    else
    {
        srvRelative.input_relative();
    }

    return 0;

}