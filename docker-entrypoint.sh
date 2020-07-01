#!/bin/sh

# check argument passed to docker run command
if [ $# == 0 ];then
	echo "No argument passed to docker run command"
else
        echo "Args passed to docker run command are [ $@ ]"
fi

# check if it first argument is initial
if [ "${1}" = "init" ]; then
    	echo "start npm script with ${1}"
	npm start "${1}"
else
	echo "starting application"
        npm start "$@"
fi
