#!/bin/bash

dnf update --assumeyes &&
dnf install --assumeyes git sudo npm nodejs wget &&
dnf update --assumeyes &&
dnf clean all &&
chmod 0500 /opt/dreadfultiger/sbin/init &&
chmod 0555 /opt/dreadfultiger/bin/setup &&
mkdir /opt/dreadfultiger/Downloads &&
chmod 0555 /opt/dreadfultiger/Downloads &&
wget --no-check-certificate --output-document /opt/dreadfultiger/Downloads/ca.cert https://gitlab.363-283.io/cte/corius/uploads/d2e8bb0063e0c700fa54c8063c47f479/ca.crt
