#!/bin/bash

vagrant up
vagrant ssh --command "cd /vagrant/ && ./build.sh $@"
