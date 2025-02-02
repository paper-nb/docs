#!/usr/bin/env sh

# 确保脚本抛出遇到的错误

set -e

# 生成静态文件

npm install -g yarn
yarn add -D vuepress
npm run docs:build

# 进入生成的文件夹

cd docs/.vuepress/dist

# 如果是发布到自定义域名

# echo 'docs.monday-ovo.top' > CNAME

git init
git add -A
git commit -m '自动提交程序'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:dawangfangpo/docs.git origin:gh-pages

