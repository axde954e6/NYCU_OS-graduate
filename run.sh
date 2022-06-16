#!/bin/bash
sudo swapoff -a && sudo swapon -a
sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
echo baseline
time sudo ./baseline ./tmp/ramdisk/1GB.dat ./tmp/ramdisk/1.dat
sudo rm -f ./tmp/ramdisk/1.dat

echo ---------------------------------
sudo swapoff -a && sudo swapon -a
sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
echo 0712534
time sudo ./0712534 ./tmp/ramdisk/1GB.dat ./tmp/ramdisk/2.dat
diff ./tmp/ramdisk/1GB.dat ./tmp/ramdisk/2.dat
sudo rm -f ./tmp/ramdisk/2.dat
