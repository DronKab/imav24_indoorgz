# imav24_indoorgz

## Pre-requisites

- PX4 SITL installed with Gazebo. Commands for this are : 

    ```sh
    cd
    git clone https://github.com/PX4/PX4-Autopilot.git --branch v1.14.3
    bash ./PX4-Autopilot/Tools/setup/ubuntu.sh
    cd PX4-Autopilot/
    make px4_sitl
    ```

Installation steps and more details can be found *[here](https://docs.px4.io/main/en/ros2/user_guide.html#install-px4)*

 - QGroundControl (optional)

    ```sh
    sudo usermod -a -G dialout $USER
    sudo apt-get remove modemmanager -y
    sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
    sudo apt install libfuse2 -y
    sudo apt install libxcb-xinerama0 libxkbcommon-x11-0 libxcb-cursor-dev -y
    cd
    wget https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl.AppImage
    chmod +x ./QGroundControl.AppImage
    ```

Detailed steps and more info *[here](https://docs.qgroundcontrol.com/master/en/qgc-user-guide/getting_started/download_and_install.html)*

## Installation

- Clone this repo.

    ```sh
    cd
    git clone https://github.com/DronKab/imav24_sim imav24_sim
    ```


## How to run

- Run Gazebo Simulator.

    ```sh
    cd
    cd imav24_sim
    gz sim indoor.sdf -r
    ```

- Connect PX4 SITL to gazebo.

    ```sh
    cd 
    cd PX4-Autopilot
    HEADLESS=1 make px4_sitl gz_x500_depth
    ```

- Connect Gazebo Topics to ROS2.
    ```sh
    ros2 run ros_gz_bridge parameter_bridge /pi_camera@sensor_msgs/msg/Image[ignition.msgs.Image /pi_camera_info@sensor_msgs/msg/CameraInfo[ignition.msgs.CameraInfo /camera@sensor_msgs/msg/Image[ignition.msgs.Image /camera_info@sensor_msgs/msg/CameraInfo[ignition.msgs.CameraInfo
    ```

- Run QGroundControl (optional).
    ```sh
    cd
    ./QGroundControl.AppImage
    ```

- Run your ROS2 nodes! 

*__NOTE__* : Addittionaly, a script that opens everything for both indoor and outdoor is provided, but it will only work with default paths, it can be run in a new terminal with : *./imav24_sim/script_indoor.sh*
