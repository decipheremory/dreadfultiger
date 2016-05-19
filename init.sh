#!/bin/bash

adduser --create-home  &&
echo "  ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ &&
chmod 0444 /etc/sudoers.d/ &&
mkdir /home//.ssh &&
cp /opt/dreadfultiger/private/id_rsa /home//.ssh &&
chown --recursive : /home//.ssh &&
su --login  --command "/opt/dreadfultiger/bin/setup \"\" \"\" \"\" \"\" \"\""
su --login 
