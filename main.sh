#!/bin/bash

declare -a cmd
declare -a desc

desc[999]="exit"
script[999]="exit 0"

# description
desc[1]="display disk space"
# execute command
script[1]="df -h"
# no-confirm
yes[1]=y

desc[2]="List up all big size directories(>= 5GB)"
script[2]="sudo du -g -x -d 5 / | awk '\$1 >= 5{print}'"

desc[101]="run brew cleanup"
script[101]="brew cleanup"

desc[111]="check Xcode iOS DeviceSupprt dir"
script[111]="checkDir ~/Library/Developer/Xcode/iOS\ DeviceSupport"
yes[111]=y

desc[121]="rm docker containers"
script[121]="docker rm \`docker ps -a -q\`"
desc[122]="rm docker images"
script[122]="docker rmi \`docker images | awk '/^<none>/ { print $3 }'\`"

desc[151]="check stack(haskell) snapshots"
script[151]="checkDir ~/.stack/snapshots/x86_64-osx"
yes[151]=y

desc[201]="How to start mac in Safe Mode?"
script[201]="echo 1.Turn on your mac; echo 2.Press and hold the Shift key as soon as you hear the startup sound"
yes[201]=y

function checkDir() {
    du -sh "${1}"/* && open "${1}"
}

while :
do
    echo "-------- commands --------"
    for i in "${!desc[@]}"
    do
        echo "${i}: ${desc[$i]}"
    done
    read -p "input number: " num
    cmd=${script[$num]}
    echo ""
    if [ -n "$cmd" ]
    then
        if [ "${yes[$num]}" == "y" ]
        then
            eval "$cmd";
        else
            read -p "Are you sure you want to do \`${cmd}\` ? [Y/N] " yn
            case $yn in
                [Yy]* ) eval "$cmd";;
                * ) ;;
            esac
        fi
    else
        echo "undefined command"
    fi
    echo ""
    echo ""
done


