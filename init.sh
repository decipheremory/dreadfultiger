#!/bin/bash

adduser --create-home ${LUSER} &&
echo "${LUSER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${LUSER} &&
chmod 0444 /etc/sudoers.d/ &&
mkdir /home/${LUSER}/.ssh &&
cp /opt/dreadfultiger/private/id_rsa /home/${LUSER}/.ssh &&
chown --recursive ${LUSER}:${LUSER} /home/${LUSER}/.ssh &&
su --login ${LUSER} /opt/dreadfultiger/bin/setup "${GIT_EMAIL}" "${GIT_NAME}" "${GIT_URL}" "${GIT_BRANCH_PARENT}" "${GIT_BRANCH_CHILD}"
su --login ${LUSER}
