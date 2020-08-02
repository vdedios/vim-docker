#! /bin/ash

ROOT_PATH=/Local

if [[ ${1:0:1} == "/" ]]; then
	vim $ROOT_PATH$1
else
	vim $ROOT_PATH$CURRENT_DIR/$1
fi
