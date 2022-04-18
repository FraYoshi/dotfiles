umask 002
[ -f ~/.bashrc ] && . ~/.bashrc
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
#
#if [ -f ~/.bash_aliases ]; then
#	. ~/.bash_aliases
#fi
#if [ -f ~/.bash_profile ]; then
#	. ~/.bash_profile
#fi
#export PS1="\e[1;35m[\u\e[m@\e[1;32m\h\e:\W]\e[1;34m^\$?\$ \e[m"
#export PS1="${_GREEN}[${_YELLOW}\u${_WHITE}@${_BLUE}${_BOLD}\h${_WHITE}${_BOLD}:\W${_GREEN}]${_BLUE}e\$?${_RED}\$ ${_RESET}"
