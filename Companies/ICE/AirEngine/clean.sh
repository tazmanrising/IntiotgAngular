#!/bin/bash
# This script will delete all the build artifacts
# On Windows you can run it from Git for Windows CLI ('Git Bash Here' context menu)

all=false

function help() {
    echo "clean repository: usage: $0 [-a]"
    echo "  -a: clean all, including 'App_Data' folder"
    exit 0
}

while getopts ":ah" opt; do
  case $opt in
     a) all=true ;;
     h) help ;;
    \?) echo "invalid option: -$OPTARG use -h for help" >&2; exit 1 ;;
  esac
done

echo "cleaning ..."

rm -r ./.vs
rm -r ./packages
rm -r ./ovs.hotel.ui/bin
rm -r ./ovs.hotel.ui/obj

if [ "$all" = true ]; then
    echo "removing App_Data ..."
    rm -r ./ovs.hotel.ui/app_data
else
    echo "skipping App_Data, use -a to remove it"
fi

echo "done."
