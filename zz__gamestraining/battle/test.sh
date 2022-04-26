#!/bin/bash



output=$(readlink ../saves/*-sav)
name= $(cat $output)
echo $name