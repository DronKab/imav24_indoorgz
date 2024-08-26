gnome-terminal --title="Gazebo" -- bash -c "cd ~/imav24_sim && gz sim indoor.sdf -r; exec bash"
gnome-terminal --title="QGroundControl" -- bash -c "cd ~ && ./QGroundControl.AppImage; exec bash"
gnome-terminal --title="PX4 SITL" -- bash -c "cd ~/PX4-Autopilot/ && HEADLESS=1 make px4_sitl gz_x500; exec bash"
gnome-terminal --title="Bridge GZ-ROS2" -- bash -c "ros2 run ros_gz_bridge parameter_bridge /pi_camera@sensor_msgs/msg/Image[ignition.msgs.Image /pi_camera_info@sensor_msgs/msg/CameraInfo[ignition.msgs.CameraInfo /camera@sensor_msgs/msg/Image[ignition.msgs.Image /camera_info@sensor_msgs/msg/CameraInfo[ignition.msgs.CameraInfo; exec bash"
