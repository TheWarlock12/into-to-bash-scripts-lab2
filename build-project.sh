#!/bin/bash

name=$1
#Gives the name of tthe directory

mkdir $name
cd $name
touch "README.md"
touch $name.sh
#File Creation

#giver permissions executable
chmod +x build-project.sh
ls -1 build-project.sh


#Initialize the Git repo
echo "initializing new Git repository..."
git init
git add .
git commit -m "Initial Commit"
git push

