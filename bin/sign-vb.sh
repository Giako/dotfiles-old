#!/usr/bin/env bash
# Sign the VB module after an update
# Author: Giako
echo "Signin script /usr/src/linux-headers-$(uname -r)/scripts/sign-file";
echo "Module name: $(modinfo -n vboxdrv)";
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha-256 /home/giako/MOK.priv /home/giako/MOK.der $(modinfo -n vboxdrv)
