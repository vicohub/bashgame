#!/bin/bash
#this script is meant to be called for encounters in the story
#first step is to load stats from the hero and the enemy



#retrieve stats files
heroname=$(cat ../saves/*-sav | grep name= | awk '{ print substr ($0, 6 ) }')
mkdir tmp/
cp ../saves/*-sav tmp/$heroname


#set variables for fights

#the script for the fight

#create four functions hero.atk hero.mgatk foe.atk foe.mgatk
#each function can be chosen by the player for each turn
#each functions modifies tmp herofile and foefile for each turn






#add xp after fight



#move back the file to the save folder after the fight with updated
cp tmp/$heroname ../saves/$heroname-sav




