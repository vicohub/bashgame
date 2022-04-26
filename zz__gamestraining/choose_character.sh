#!/bin/bash
#choose your class
startphrase="Adventure awaits"
PS3="Which class your hero will be ? : "
select opt in Barbarian Sorcerer Archer quit; do

  case $opt in
    Barbarian)
      read -p "What is your hero's name ?: " n1
      stats=$(cat class_stats/barb_default_stats)
      echo "$n1 stats are : "
      echo "$stats"
      cp class_stats/barb_default_stats saves/$n1-barb 
      echo "name=$n1" > saves/tmpname
      cp saves/tmpname saves/$n1-sav
      echo "$stats" >> saves/$n1-sav
      rm saves/$n1-barb
      rm saves/tmpname
      echo "--saved--"
      sleep 1
      echo "$startphrase $n1"
      break
      ;;
    Sorcerer)
      read -p "What is your hero's name ?: " n1
      stats=$(cat class_stats/sorc_default_stats)
      echo "$n1 stats are : "
      echo "$stats"
      cp class_stats/sorc_default_stats saves/$n1-sorc 
      echo "name=$n1" > saves/tmpname
      cp saves/tmpname saves/$n1-sav
      echo "$stats" >> saves/$n1-sav
      rm saves/$n1-sorc
      rm saves/tmpname
      echo "--saved--"
      sleep 1
      echo "$startphrase $n1"
      break
      ;;
    Archer)
      read -p "What is your hero's name ?: " n1
      stats=$(cat class_stats/arch_default_stats)
      echo "$n1 stats are : "
      echo "$stats"
      cp class_stats/arch_default_stats saves/$n1-arch 
      echo "name=$n1" > saves/tmpname
      cp saves/tmpname saves/$n1-sav
      echo "$stats" >> saves/$n1-sav
      rm saves/$n1-arch
      rm saves/tmpname
      echo "--saved--"
      sleep 1
      echo "$startphrase $n1"
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
