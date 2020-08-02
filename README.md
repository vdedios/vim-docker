# ⌨️  VIM Docker 🐳

A Docker image that ports VIM and its configs to any machine. 

## Features

The image its very lightweight since its based on the lightest Linux distribution, Alpine.

The image uses bind mounts so you actually interact with your host files as you would with a host version of VIM:

- From default it will mount the full path from */Users*  in a special folder called */Host* so you can have fully access to all files. In case you need to browse files inside Vim with Netrw or any other file 	explorer. If you would not like this path to be loaded you can change the environment variables as listed down.
	
- Despite mounting the full path from /Users Vim will load the file or path you want inside /Users. The idea is to only load Vim from a desired location/file in case you want to use buffers, sessions or any other feature while being able to reach any file in your User path. If you don't indicate any path or file Vim will load from the current, pwd, as it would in local.


## Make it yours!
This image is intended to be as simple as possible as well as accessible to anyone, here is a little advice to configure it.

### If you want to change paths you should modify the following environment variables:
-USER_PATH -> The local path  that will be bind mount into the container
-ROOT_PATH -> The path where your USER_PATH will be mounted inside the container

### Add your own vim configs
For now only simple vimrc and color theme is supported. Add your own vimrc into srcs folder and simple color scheme into *srcs/colors*

## Still to work

- Share clipboard between host and vim_docker (this seems fairly simple if host is a Linux machine, just connect x11 sockets. MacOS seems to be much more difficult to achieve)

- Add custom plugins and being able to install them automatically when building Dockerfile.

- Being able to run Vim commands (such as opening session files with vim -S session.vim) rather than just opening files.
