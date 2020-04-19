#!/bin/sh  
  
#export VMWARE_USE_SHIPPED_LIBS=force  
  
mount |grep "/home/daniel/vmware on /home/daniel/vmware" > /dev/null  
  
if [[ $? -ne 0 ]]; then  
  
  sudo mount -o multithreaded -t fuse.bindfs /home/daniel/vmware /home/daniel/vmware > /dev/null  
  
  if [[ $? -ne 0 ]]; then  
  
    echo "Bindfs mount failed. Please check if bindfs is correctly installed."  
  
    exit 1  
  
  fi  
  
fi  
  
vmplayer "$@"  
  
sudo umount /home/daniel/vmware > /dev/null  
  
exit 0  
