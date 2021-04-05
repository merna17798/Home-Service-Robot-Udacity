#!/bin/sh


# TURTLEBOT_WORLD: deploys turtlebot in an environment
xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/root/catkin_ws/src/map/u.world "&
sleep 15  #(takes quite some time to load)

# GMAPPING_DEMO: performs SLAM
xterm  -e  "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/root/catkin_ws/src/map/map.yaml" &
sleep 10

# VIEW_NAVIGATION: observe map in Rviz
xterm  -e  "roslaunch turtlebot_rviz_launchers view_navigation.launch"&
sleep 10 

# PICK_OBJECTS: launch pick_objects node
xterm  -e  "rosrun pick_objects pick_objects"
