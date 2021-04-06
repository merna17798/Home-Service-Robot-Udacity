# Project_5_Home_Service_Robot
> On this project, we will create a home service robot that first of all, it map the world then it navigate through it then write a node to give more than one action at a time. Also, the robot could pick a virtual object from position to another.
> The main used packages are:
*  gmapping: With the gmapping_demo.launch file, you can easily perform SLAM and build a map of the environment with a robot equipped with laser range finder sensors or RGB-D cameras.
* turtlebot_teleop: With the keyboard_teleop.launch file, you can manually control a robot using keyboard commands.
* turtlebot_rviz_launchers: With the view_navigation.launch file, you can load a preconfigured rviz workspace. You’ll save a lot of time by launching this file, because it will  automatically load the robot model, trajectories, and map for you.
* turtlebot_gazebo: With the turtlebot_world.launch you can deploy a turtlebot in a gazebo environment by linking the world file to it.
## How your submission should be like
![image](https://user-images.githubusercontent.com/42812924/113694035-8ba25380-96cf-11eb-963b-adac7d5f2156.png)

## We also had wrote some scripts:
* test_slam.sh
```
sudo chmod 777 file_name.sh
```
> This is a required step to could run any .sh file in your environment due to permission issues.

```
./test_slam.sh
```
> That's how you could run this script. Remember to navigate to your scripts folder to run or using the above command. When you ran this script you will find that your gazebo environment wiith turtlebot, then the acml navigation scan terminal, then rviz, the teleop package to map that world. Ater mapping, take a look on your map in rviz and if you are satisfied, kill the script and navigate to map directory to save your map using this command:
```
rosrun map_server map_saver
```
* test_navigation.sh

```
./test_navigation.sh
```
> That's how you could run this script. Remember to navigate to your scripts folder to run or using the above command. When you ran this script you will find that your gazebo environment wiith turtlebot, then the acml navigation scan terminal, then rviz. In rviz and push the 2D navigate to find if your robot can go the goal you can track if your goal reached or not through the second pop up terminal
