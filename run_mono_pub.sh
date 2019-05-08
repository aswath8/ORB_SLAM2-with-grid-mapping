#!/usr/bin/env bash

export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:`pwd`/Examples/ROS

print_help()
{
  echo -e "Usage:\n\t$0 path_to_camera_settings path_to_sequence/camera_id/[-1 <image_topic>]"
  echo -e "\nExamples:"
  echo -e "\n\t$0 Examples/Monocular/KITTI00-02.yaml /home/${USER}/Documents/dataset/KITTI/raw_data/2011_09_26/2011_09_26_drive_0002_sync/image_00"
  echo -e "\n\t$0 Examples/RGB-D/kinect.yaml -1 /camera/rgb/image_raw"
}

if [ "$#" -lt "2" ]; then
  print_help
  exit 0
fi

#rosrun ORB_SLAM2 Monopub Vocabulary/ORBvoc.txt \
#  Examples/Monocular/KITTI00-02.yaml \
#  /home/${USER}/Documents/dataset/KITTI/raw_data/2011_09_26/2011_09_26_drive_0002_sync/image_00

rosrun ORB_SLAM2 Monopub Vocabulary/ORBvoc.txt $1 $2 $3
