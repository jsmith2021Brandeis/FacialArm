 #!/bin/bash
#Jacob smith COSI 119A 11/7/2019 ASrm Interface

#run topic echo node to print serial output
#run publisher node with a delay so robot can start up
gnome-terminal -e 'sh -c "echo \"This Window will publish output from Arm, please look at main window for now\";sleep 40;rostopic list;sleep 5;rostopic echo /armresponse"'

#run publisher node with a delay so robot can start up
gnome-terminal -e 'sh -c "echo \"This Window will publish input to Arm, please look at main window for now\";sleep 40;cd ~/catkin_ws/src/arminterface/scripts;python arm_commander.py"'
#start robot and run subscriber node, using directory variable so it isn't hardcoded
BASEDIR="$PWD"
ssh mutant@mutant.dyn.brandeis.edu 'bash' < '$BASEDIR/mutantStartup.sh'