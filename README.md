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

## How to run

- Clone this repo

    ```sh
    cd
    git clone https://github.com/DronKab/imav24_indoorgz indoor_world
    ```

- Run Gazebo Simulator

    ```sh
    cd
    cd indoor_world
    gz sim world.sdf
    ```

- Connect PX4 SITL to gazebo

    ```sh
    cd 
    cd PX4-Autopilot
    HEADLESS=1 make px4_sitl gz_x500
    ```
