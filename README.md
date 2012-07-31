# Rhomobile Example Apps

This is a branch off of <https://github.com/reinteractive-open/rho-example/>

## Hello World

***branch*** <https://github.com/reinteractive-open/rho-example/tree/feature/example-01-hello-world>

This branch does the absolute basics.  It allows you to manage Products.  The authentication is "true" meaning you can login in with whatever you like.

***To Use***

	git clone git://github.com/reinteractive-open/rho-example.git
	cd rho-example
	git checkout --track -b feature/example-01-hello-world origin/feature/example-01-hello-world

## Setup

### Prerequisites

This work has been done on Ruby 1.9.3-p125.  We suggest you use a version of ruby close to that for best results

There are .rbenv files for people using <https://github.com/sstephenson/rbenv/>


### Install Rho

		#!/bin/bash

		make > /dev/null 2> /dev/null

		if [ $? != 2 ]
		then
		  echo 'Please install building tools'
		  exit;
		fi

		java 1> /dev/null 2> /dev/null

		if [ $? != 0 ]
		then
		  echo 'Please install java development kit'
		  exit;
		fi

		echo "Install rhomobile debugger"
		sudo gem install rhomobile-debug

		echo "Install rhodes gem"
		sudo gem install rhodes

		echo "Install rhoconnect gem"
		sudo gem install rhoconnect

		echo "Install rhoconnect adapters gem"
		sudo gem install rhoconnect-adapters

		echo "Install rhodes translator gem"
		sudo gem install rhodes-translator

### Follow README.md for each of the projects
* Follow README.md for rho-connect-example
* Follow README.md for rho-rails-example
* Follow README.md for rho-mobile-example

## If everything goes well you should have…

### rho-connect-example

![rho-connect-example](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.21.53%20AM.png)

### rho-rails-example

![rho-rails-example](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.21.39%20AM.png)

### rho-mobile-example

![rho-mobile-1](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.20.09%20AM.png)

![rho-mobile-2](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.20.28%20AM.png)

![rho-mobile-3](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.20.40%20AM.png)

![rho-mobile-4](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.20.52%20AM.png)

![rho-mobile-5](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.21.04%20AM.png)

![rho-mobile-6](https://github.com/reinteractive-open/rho-example/raw/feature/example-01-hello-world/screen_shots/Screen%20Shot%202012-08-01%20at%205.21.13%20AM.png)


