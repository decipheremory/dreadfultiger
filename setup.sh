#!/bin/bash

GIT_EMAIL="" &&
GIT_NAME="" &&
GIT_URL="" &&
GIT_BRANCH_PARENT="" &&
GIT_BRANCH_CHILD="" &&
cp /opt/dreadfultiger/lib/config /home/emory/.ssh &&
chmod 0600 /home/emory/.ssh/config /home/emory/.ssh/id_rsa &&
git config --global user.email "" &&
git config --global user.name "" &&
mkdir /home/emory/workspace &&
git -C /home/emory/workspace init &&
git -C /home/emory/workspace remote add origin "" &&
# ([ -z "" ] || git -C /home/emory/workspace pull origin "") &&
# ([ -z "" ] || git -C /home/emory/workspace checkout -b "") &&
true
