#!/bin/bash
read -p "请输入GitHub仓库URL（例如 https://github.com/你的用户名/仓库名.git）: " repoURL
read -p "请输入GitHub Token: " token

git init
git add .
git commit -m "Initial commit"
git branch -M main
repoURLToken=$(echo $repoURL | sed "s#https://#https://$token@#")
git remote add origin $repoURLToken

git push -u origin main
