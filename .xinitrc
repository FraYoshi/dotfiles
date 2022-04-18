#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

exec startxfce4
