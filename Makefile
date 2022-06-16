all:
	sudo mount -t tmpfs -o size=3G tmpfs /mnt/c/Users/axde9/Desktop/OS_mount/tmp/ramdisk
	sudo cp ./1GB.dat ./tmp/ramdisk/1GB.dat
