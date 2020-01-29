#!/bin/bash
branchToDeleteSet=`git branch --merged|grep -v master|grep -v release|grep -v dev`
for branchName in "$branchToDeleteSet"
do
git branch -d $branchName
done
