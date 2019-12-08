# FacialArm

Jacob Smith 12/7/2019 18:42: Making a Repostiroy to hold a combine dproject of Facial Recognition and Arm Interface Cosi 119 Fall 2019 Brandeis University.

Adding Luis' project first with my installation guide here:

import face_recognition
import cv2

I will rewrite my startup script to launch a python file named arm commander, so the bash script doesn't have to be changed

**Installation Guide:**

`pip install face_recognition` 

`pip install opencv-python` (takes ~20 minutes)

**Running Guide**

1. be in outermost file

2. run bu shortcut on a robot

3. run roslaunch turtlebot3_bringup turtlebot3_rpicamera.launch framerate:=20 (didn't work on my computer)

4. `rqt_image_view` and select the compressed file you should see this

   This will show![Shows Camera view of lab](docs/rqtView.png)

   5) python face_finder.py, and the program will print out 

19:29: Luis' program works on my computer, printing out his name if he is front of camera, unknown if I am in front of camera, and doesn't rpint if a person isn't there. There is about a ten second lag on this computer.git 



python armCommander.py



To Do: 

SHOW lUIS' PROGRAM WORKS

SHOW MY PROGRAM WORKS

SHOW THEY WORK TOGETHER, DEMO VIDEO