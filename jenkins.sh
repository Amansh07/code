#!/bin/bash

echo "Do you want to proceed with installation/yes/no:"

read yes
read no

if [ "$yes" == "yes" ];then
          sudo apt-get update
          sudo apt upgrade
          sudo apt install default-jre
          sudo apt-get update
          sudo apt install git
          sudo apt install maven
          sudo apt-get update
          wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
          sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
          sudo apt update
          sudo apt install jenkins
          sudo systemctl start jenkins
          sudo systemctl status jenkins


        echo " Installation Done!"

  else

     echo "NO installation "

  fi
