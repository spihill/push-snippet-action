#!/bin/ash

# $1: user_name
# $2: library_repo
# $3: github_token

git config --global user.name "push-snippet-action"
git config --global user.email "push-snippet-action"
git clone https://${1}:${3}@github.com/${1}/${2}.git
cd ${2}
ls -l