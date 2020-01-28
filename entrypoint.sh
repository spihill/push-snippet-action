#!/bin/ash

git config --global user.name "push-snippet-action"
git config --global user.email "push-snippet-action"
git clone https://${1}:${3}@github.com/$1/$2.git