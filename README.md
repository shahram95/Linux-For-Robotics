# Linux-For-Robotics
Hands-on guide for learning Linux for Robotics.

## Steps for creating from scratch if necessary

Note: for some reason this was not working on the HDD only on the SSD on the Desktop so create the relevant workspaces on the Desktop. Also if an anoconda workspace is present it should be deactivated otherwise ROS opencv will definetly throw an error due to conflict. Simply rename the anaconda3 folder on the ~(home) directory to anaconda.

* Creating the workspaces
	* Open the terminal
	* execute: mkdir -p ~/Desktop/0_linux_for_robotics/ai_ws/src
	* execute: mkdir -p ~/Desktop/0_linux_for_robotics/catkin_ws/src
	* execute: mkdir -p ~/Desktop/0_linux_for_robotics/notebook_ws/src
	* execute: mkdir -p ~/Desktop/0_linux_for_robotics/simulation_ws/src

* Configure the simulation_ws:

	* Go to the simulation_ws: cd ~/Desktop/0_linux_for_robotics/simulation_ws
	* execute: catkin_make
	* execute: git clone git@github.com:shahram95/bb8.git
	* Alternatively to step(c): copy all the files from the existing simulation_ws to the new simulation_ws
	* Go to the main ws (just before the src) by executing: roscd; cd .. and execute: catkin_make
	* If the catkin_make fails, it might be due to dependencies issue, read the prompt and if it is a dependency error then execute: 
	   ```rosdep install --from-paths ~/Desktop/0_linux_for_robotics/simulation_ws --ignore-src --rosdistro=kinetic```

	* Execute one last time: catkin_make

* Copy all the notebooks html/ipynb and the img file (neccessary) to the notebook_ws

* Configure the catkin_ws:
	* Go to the catkin_ws: cd ~/Desktop/0_linux_for_robotics/catkin_ws
	* execute: catkin_make
	* It should have one single folder in the src with a single bash (.sh) file: ../src/demo_files/demo.sh

* In order to activate the workspace:
	* go to the workspace
	* execute: source devel/setup.bash
	* execute: rospack profile

* For simulation for this course:
	* roslaunch bb_8_gazebo main.launch (unit_1, unit_2, unit_3, unit_4)
