# ⌨️  VIM Docker 🐳
Are you working in a machine and you wish you had all your vim configs? Maybe trying to install all your configs from scratch? Skip the pain and deploy vim-docker with a single click! A Docker image that ports VIM and all your configs to any machine. __Currently only works on MacOS and Linux__.

## Installation
```./install.sh```

## Usage
```vimd name_of_file```

## How it works?

The image its very lightweight since it's based on the lightest Linux distribution, Alpine. It uses bind mounts so you actually interact with your host files as you would with a host version of VIM:

- From default it will bind mount `HOST_PATH` *(default defined as /Users)* in `CONTAINER_PATH` *(default defined as /Host)* so you can have fully read and write access to all files  in your local machine.

- You will be able to reach and browse all files from `HOST_PATH` inside Vim with Netrw or any other file explorer as always. If you would not like any of this paths to be loaded you can change the environment variables as listed down.
	
- Open any file as you would with Vim. Vim-docker will load Vim from a desired location/file in case you want to use buffers, sessions or any other feature but you will be able to reach any file in your `HOST_PATH`. If you don't indicate any path or file Vim will load from the current, pwd, as it would in local.


## Make it yours!
This image is intended to be as simple as possible as well as accessible to anyone, here is a little advice to configure it.

#### If you want to change paths you should modify the following environment variables:

Go to `vimd` and change the following (if already installed, go to /usr/local/bin):

- `HOST_PATH=/Users`  The local path  that will be bind mount into the container
- `CONTAINER_PATH=/Local` The path where your `HOST_PATH` will be mounted inside the container

#### Add your own vim configs

For now only simple vimrc and color theme is supported. Add your own vimrc into `./srcs` folder and simple color scheme into `./srcs/colors`

## Still to be worked

- Share clipboard between host and vim_docker (this seems fairly simple if host is a Linux machine, just connect x11 sockets. MacOS seems to be much more difficult to achieve)

- Add custom plugins and being able to install them automatically when building Dockerfile.

- Being able to run Vim commands (such as opening session files with vim -S session.vim) rather than just opening files.
