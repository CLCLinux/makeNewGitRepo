#!/bin/bash
#
# Created By: ssarver
# Created Date: Thu Jun  1 19:30:52 CDT 2017
# Purpose: 

set -e # Fail on error!
set -u # Fail on unset variable!
# set -x Show Bash commands as output(default commented out)!


echo "NOTE: This script assumes your github user is a contributor with appropriate rights to create a repo in the organization."
echo " "


echo "Please enter your github username"
read github_user


echo "Please enter your github org that the repo should be created in"
read github_org

current_dir="${PWD##*/}"

# https://developer.github.com/v3/repos/#create
echo "curl -u \"$github_user\" https://api.github.com/orgs/$github_org/repos -d \"{\"name\":\"$current_dir\"}\""

curl -u "$github_user" https://api.github.com/orgs/$github_org/repos -d "{\"name\":\"$current_dir\"}"
