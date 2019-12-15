 #!/bin/bash
#Jacob smith COSI 119A 11/7/2019 ASrm Interface
echo "wait for robot to turn on"
sleep 8

#update Topic Subscriber on robot
echo "updating Local File on Robot"
scp topic_subscriber.py mutant@mutant.dyn.brandeis.edu:Documents/topic_subscriber.py

#using directory variable so that isn't hardcoded
BASEDIR="$PWD"
#run topic echo node to print serial output
#run publisher node with a delay so robot can start up
gnome-terminal -e 'sh -c "echo \"This Window will publish output from Arm, please look at main window for now\";sleep 40;rostopic list;sleep 5;rostopic echo /armresponse"'

#run publisher node with a delay so robot can start up
#gnome-terminal -e 'sh -c "echo \"This Window will publish input to Arm, please look at main window for now\";sleep 40;cd '$BASEDIR';python arm_commander.py"'
#start robot and run subscriber node
ssh mutant@mutant.dyn.brandeis.edu 'bash' < $BASEDIR'/mutantStartup.sh'