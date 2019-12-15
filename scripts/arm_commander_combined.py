#!/usr/bin/env python

#importing Python labraies
import numpy as np
import rospy
from std_msgs.msg import String

frame_counter = 1
list_of_names  = []

def callback(name):
    global get_name
    global frame_counter
    get_name = name
    list_of_names.append(name)
    frame_counter = + frame_counter + 1

print 'start up has begun in the node'
rospy.init_node('face_recognition_v2')
face_finder = rospy.Subscriber("face_recognition", String, callback)
pub = rospy.Publisher('face_recognition/data_clean_up', String, queue_size=1)
pub_arm = rospy.Publisher('armcommand', String, queue_size=10)

while not rospy.is_shutdown():
   
    if frame_counter >= 10:
        frame_counter = 0
        real_name = 'cant_find_face'
        
        for x in list_of_names:
            if x != 'cant_find_face':
                real_name = x
        del list_of_names[:]
        if real_name != 'cant_find_face':
            pub_arm.publish("MANIP 1 \n")
            rate.sleep()
            pub_arm.publish("MANIP 0 \n")
           

        print get_name, frame_counter
        rate.sleep()













