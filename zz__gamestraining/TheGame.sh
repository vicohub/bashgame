#!/bin/bash
#This is the main file to play the game

echo "Welcome to this boring game -- let's start"
sleep 1
echo "---The Game--- : "

PS3="Please choose : "

select opt in Start Continue quit; do

  case $opt in
    Start)
      echo "---New game---"
      sleep 1
      ./choose_character.sh
      break
    
      ;;
    Continue)
      echo "Let's find your hero"
      sleep 1
      read -p "What is your hero's name ?: " n1
      read -p "What is your hero's class ?: " n2
      stats_saved=$(cat saves/$n1-$n2)
      echo "Your hero is $n1 and below are his stats :"
      echo "$stats_saved"
      break
      ;;

    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done

echo "You are in an open field, you see a village near but there are wolves on your way."
sleep 1
echo "Alone "
sleep 2

./locations/open_fields/open_fields.sh