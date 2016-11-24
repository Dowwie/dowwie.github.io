#!/bin/sh

cd public
find . -name '*.html' | xargs perl -pi -w -e 's/https\:\/\/dowwie.github.io//g;' 
git checkout master
git status
git add -A :/
git commit -am "Committing changes to master"
git push origin master
git checkout gh-pages
git rebase master # or merge, whatever your preference
git push origin gh-pages
git checkout master
