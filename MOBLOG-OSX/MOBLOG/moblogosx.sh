#!/bin/bash
PS3='CHOSE NUMBER: '
options=("ANDROID APPS" "iOS APPS" "ANDROID LOGS" "iOS LOGS")
select opt in "${options[@]}"
do
  case $opt in
    "ANDROID APPS")
      echo "wybrano aplikacje android"
      ;;
    "iOS APPS")
      echo "wybrano aplikacje ios"
      ;;
    "ANDROID LOGS")
      echo "wybrano logi android"
      ;;
    "iOS LOGS")
      echo "wybrano logi ios"
      ;;
    "Quit")
      break
      ;;
    *) echo "INVALID OPTION $REPLY";;
  esac
done
