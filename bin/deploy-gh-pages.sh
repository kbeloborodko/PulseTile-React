#!/usr/bin/env bash

git checkout gh-pages
npm run build:dev
cp ./dist/* ./
git commit -am "deploy-$(date +%s)"
git push -u origin gh-pages
git checkout -
