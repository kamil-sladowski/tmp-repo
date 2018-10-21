#!/bin/bash
#Kamil 
fullName=$( getent passwd "$USER" | cut -d: -f5 | cut -d, -f1 )
loginInfo=$(whoami)

show_info() {
  echo "Login: $loginInfo"
  echo "User name: $fullName"
  exit 0
}

show_help() {
    echo "HELP: The program provides login and first and last name. The author of the program: Kamil Milik"
}

for param in "$@"
do
    if [ "$param" = "-h" ] || [ "$param" = "--help" ]; then
      show_help
      exit 0 
    fi
done

for param in "$@"
do
    if [ "$param" = "-q" ] || [ "$param" = "--quiet" ]; then
      exit 0 
    fi
done

for param in "$@"
do
    if [ "${param:0:1}" == "-" ]; then
      echo "Incorrect option $param"
      show_help
      exit 1
    fi
done

show_info
