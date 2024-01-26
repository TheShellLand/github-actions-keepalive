#!/bin/bash -l

# entrypoint

set -o errexit
set -o pipefail
set -o nounset

set -o xtrace

user_name=$1
user_email=$2

git config --global user.name $user_name
git config --global user.email $user_email

# Generate empty commits
git commit --allow-empty -m "stay alive"

git push
