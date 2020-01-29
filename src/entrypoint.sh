#!/bin/ash

# $1: user_name
# $2: library_repo
# $3: github_token
# $4: snippet_gist_id
# $5: snippet_gist_token
# $6: snippet_file_name
# $7: snippet_ignore_file_path

git config --global user.name "push-snippet-action"
git config --global user.email "push-snippet-action"

git clone https://${1}:${3}@github.com/${1}/${2}.git

cp /src/make_cpp_json.py ${2}
cp /src/resolve_includes.py ${2}

cd ${2} && python3 make_cpp_json.py ${7} && cd ..

git clone https://spihill:${5}@gist.github.com/spihill/${4} && rm ./${4}/${6} -f

mv ./${2}/${6} ./${4} && cd ./${4}
git add ${6}
git commit -m "updated by push-snippet-action" && git push origin HEAD || echo "NOT changed"