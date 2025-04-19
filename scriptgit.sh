#!/bin/bash


CURRENT_BRANCH=$(git branch --show-current)


echo "Current Branch is $CURRENT_BRANCH"


git fetch origin 


git rebase $CURRENT_BRANCH


read -p "Enter the Other Branch" OTHER_BRANCH


git checkout $OTHER_BRANCH

touch sampleApi angular asp-net sqlserver

git add .
 
git commit -m "the is the demo"

git checkout $CURRENT_BRANCH

git merge $OTHER_BRANCH