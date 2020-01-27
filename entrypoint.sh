#!/bin/ash

files=`ls -l`
echo "::set-output name=files::${files}"