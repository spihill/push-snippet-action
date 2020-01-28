#!/bin/ash

# $1: user_name
# $2: library_repo
# $3: github_token

git config --global user.name "push-snippet-action"
git config --global user.email "push-snippet-action"
git clone https://${1}:${3}@github.com/${1}/${2}.git
ls / -l
cp /make_cpp_json.py ${2}
cp /resolve_includes.py ${2}
cd ${2}
python3 make_cpp_json.py