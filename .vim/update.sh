#!/usr/bin/env sh

cd ~/.vim
# save working dir
previous=$PWD

git_update() {
  # walk plugins in dir
  for d in $1/*; do
      cd $d
      echo [x] Updating $d......
      git pull
      cd $previous
  done
}

# update folders
git_update ./pack/plugins/start
git_update ./pack/plugins/opt

