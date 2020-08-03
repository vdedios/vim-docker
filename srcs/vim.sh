#! /bin/ash

# Enable Vim to open the desired file/path

ROOT_PATH=/Local

if [[ ${1:0:1} == "/" ]]; then
	vim $CONTAINER_PATH$1
else
	cd $CONTAINER_PATH$CURRENT_DIR
	vim $1
fi
