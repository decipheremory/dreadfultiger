#!/bin/bash

dnf update --assumeyes &&
dnf install --assumeyes git sudo npm nodejs &&
dnf update --assumeyes &&
dnf clean all &&
chmod 0500 /opt/dreadfultiger/sbin/init
chmod 0555 /opt/dreadfultiger/bin/setup
