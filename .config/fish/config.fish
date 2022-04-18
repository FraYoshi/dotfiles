if status is-interactive
    # Commands to run in interactive sessions can go here
end
if test -n "$DESKTOP_SESSION"
    set -x (gnome-keyring-daemon --start | string split "=")
end