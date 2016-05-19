#!/bin/bash

dnf update --assumeyes &&
dnf install --assumeyes git sudo &&
dnf update --assumeyes &&
dnf clean all &&
chmod 0500 /opt/dreadfultiger/sbin/init
chmod 0555 /opt/dreadfultiger/bin/setup
