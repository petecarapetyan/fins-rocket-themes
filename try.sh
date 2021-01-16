#!/bin/bash
# FOR EXPERIENCED SCRIPT USERS ONLY, ESPECIALLY `rm -rf` LINES

# aborts if not 2 args, unless previously provided, which may be confusing
if [ $# -lt 2 ]; then
  echo 1>&2 "$0: Two arguments are expected - 1. project dir - 2. rocket theme. Example: `./try.sh myproject not-five38`"
  exit 2
elif [ $# -gt 2 ]; then
  echo 1>&2 "$0: Too many arguments. Two arguments are expected - 1. project dir - 2. rocket theme"
  exit 2
fi

# Sometimes uncommenting this next line can be helpful, if you want to try different themes without re-fetching node_modules
rm -rf ../$1/docs # DANGER, WILL ROBINSON! But it can be helpful, if you're confident and want to try several themes in a row

mkdir ../$1 # makes a sibling rocket project directory from your first arg
cp -Rf ./seed-base-project/* ../$1 # copies the 3 of the 5 basic starter files into your new rocket project
cp ./seed-base-project/.eleventyignore ../$1 
cp ./seed-base-project/.gitignore ../$1
cp -Rf ./$2/src/docs ../$1 # copies the theme named by your second argument, into your new project
cp -R ./seed-markdown/docs/* ../$1/docs/ # copies some Lorem Ipsum stuff into your project so you'll have data
cd ../$1 # changes directories to your new project
npm i
npm start