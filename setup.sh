#!/bin/bash

GIT_EMAIL="${1}" &&
GIT_NAME="${2}" &&
GIT_URL="${3}" &&
GIT_BRANCH_PARENT="${4}" &&
GIT_BRANCH_CHILD="${5}" &&
cp /opt/dreadfultiger/lib/config ${HOME}/.ssh &&
chmod 0600 /home/emory/.ssh/config ${HOME}/.ssh/id_rsa &&
git config --global user.email "${GIT_EMAIL}" &&
git config --global user.name "${GIT_NAME}" &&
mkdir ${HOME}/workspace &&
git -C ${HOME}/workspace init &&
git -C /home/emory/workspace remote add origin "${GIT_URL}" &&
# ([ -z "" ] || git -C /home/emory/workspace pull origin "") &&
# ([ -z "" ] || git -C /home/emory/workspace checkout -b "") &&
true
