#!/bin/bash

vagrant up --provider=docker --no-parallel

location=$(pwd)
default_container=$(vagrant global-status | grep $location/proxy | awk -F "^| default" '{print $1}')
vagrant ssh $default_container