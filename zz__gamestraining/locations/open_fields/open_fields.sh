#!/bin/bash
#choose what do to when you are in the open fields

echo "So,....."
sleep 1
echo "---------------"

PS3="What should we do now : "

select opt in fight run quit; do

  case $opt in
    fight)
      echo "You fight the wolves"
      sleep 1
      break
    
      ;;
    run)
      echo "You run to the village entrance "
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