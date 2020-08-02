# VIM Docker 🐳

A Docker image that ports VIM and its configs to any machine. 

## Features

The image its very lightweight since its based on the lightest Linux distribution, Alpine.

The image uses bind mounts so you actually interact with your host files as you would with a host version of VIM:

- From default it will mount the full path from /Users  in a special folder called "/mySession"so you can have fully access to all files. In case you need to browse files inside Vim with Netrw or any other file 	explorer. If you would not like this path to be loaded you can change the environment variables as listed down.
	
- Despite mounting the full path from /Users Vim will load the file or path you want inside /Users. The idea is to only load Vim from a desired location/file in case you want to use buffers, sessions or any other feature while being able to reach any file in your User path. If you don't indicate any path or file Vim will load from the current, pwd, as it would in local.
