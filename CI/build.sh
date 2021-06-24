#!/bin/sh

# Script by Persian Prince for https://github.com/OpenVisionE2
# You're not allowed to remove my copyright or reuse this script without putting this header.

setup_git() {
  git config --global user.email "bot@openvision.tech"
  git config --global user.name "Open Vision skin bot"
}

commit_files() {
  ./CI/get-ts.sh
  ./CI/get-common.sh
  ./CI/chmod.sh
  ./CI/dos2unix.sh
}

upload_files() {
  git remote add upstream https://${GITHUB_TOKEN}@github.com/OpenVisionE2/skins-feed.git > /dev/null 2>&1
  git push --quiet upstream master || echo "failed to push with error $?"
}

setup_git
commit_files
upload_files
