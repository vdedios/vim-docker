#! /bin/ash

# Enable Vim to open the desired file/path

ROOT_PATH=/Local

if [[ ${1:0:1} == "/" ]]; then
	vim $CONTAINER_PATH$1
else
	vim $CONTAINER_PATH$CURRENT_DIR/$1
fi
