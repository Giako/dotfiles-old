#!/usr/bin/env bash
# Script for swapping ESC and CAPS LOCK
# Author: Giako

if [[ $(dconf read "/org/gnome/desktop/input-sources/xkb-options") ]]; then
	dconf reset "/org/gnome/desktop/input-sources/xkb-options"
	echo "ESC is now ESC"
else
	dconf write "/org/gnome/desktop/input-sources/xkb-options" "['caps:swapescape']"
	echo "CAPS LOCK is now ESC"
fi
