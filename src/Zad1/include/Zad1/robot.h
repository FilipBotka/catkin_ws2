#ifndef ROBOT_H
#define ROBOT_H

#include <iostream>
#include <vector>

class Robot {
public:
    Robot() = delete;
    Robot(int num_joints);

    int getJoints() const;
    double getCurrentPositions(int joint_id) const;
    std::vector<double> getCurrentPosition() const;

    void move(const double &positions);
    void move(int joint_id, int joint_value);

private:

    std::vector<double> pos;
    int num_joints;
    
};

#endif