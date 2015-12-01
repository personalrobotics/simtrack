#!/bin/bash
Xvfb :25 -nolisten tcp -screen :0 1280x800x24 &
xvfb="$!"
DISPLAY=:0 roslaunch simtrack_nodes multi-rigid_kinect2.launch $@
kill -9 $xvfb
