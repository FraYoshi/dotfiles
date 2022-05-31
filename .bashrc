export VISUAL=vim
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE='emoj *'

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=200000

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Enable programmable completion features.
[ -f /etc/bash_completion ] && . /etc/bash_completion

# Add bash aliases.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases 

#export IPFS_PATH=/home/frayoshi/.ipfs
#alias emacs='emacs -nw'

# SSH agent to input ssh password only once and not many consecutively
# https://wiki.archlinux.org/title/SSH_keys#SSH_agents

#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [[ ! "$SSH_AUTH_SOCK" ]]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
#fi

# colors
source ~/.grc.bashrc

# shell powerup with starship
eval "$(starship init bash)"

# PATHS
PATH="/home/frayoshi/perl5/bin${PATH:+:${PATH}}"; export PATH;
PYTHONPATH="/usr/lib/python3.10/site-packages/"; export PYTHONPATH;
PERL5LIB="/home/frayoshi/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/frayoshi/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/frayoshi/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/frayoshi/perl5"; export PERL_MM_OPT;
PATH=$PATH:~/bin:~/bin/scripts:~/bin/mount:~/bin/rclone:~/go/bin:/home/frayoshi/.gem/ruby/2.6.0/bin:/var/lib/flatpak/exports/share:/usr/bin/vendor_perl:/usr/bin/vendor_perl/exiftool:~/.local/bin:~/bin/fura-utils:~/bin/fura-utils-local

# transfer.sh
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

# Map button 8 and 9 (laterals) to button 2 (middle button)
my_mouse_id=$(xinput | grep "Logitech M705" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
#[ $my_mouse_id ] && xinput set-button-map $my_mouse_id 1 2 3 4 5 6 7 2 2 10
# Map button 8 and 9 (laterals) to button 2 (middle button)
# and 10 to RCM
[ $my_mouse_id ] && xinput set-button-map $my_mouse_id 1 2 3 4 5 6 7 2 2 3

## Map button 8 and 9 (laterals) to button 2 (middle button)
my_ergomouse_id=$(xinput | grep -F "MOSART Semi. 2.4G Wireless Mouse" | grep -Fiv "control" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
[ $my_ergomouse_id ] && xinput set-button-map $my_ergomouse_id 1 2 3 4 5 6 7 2 2 10

# Map tablet
tab_id=$(xinput | grep "HID 256c:006e Pad" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
#xinput set-button-map $tab_id 1 2 3 4 5 6 7 4 5 2 11 12 13 14 15 16
[ $tab_id ] && xinput set-button-map $tab_id 10 11 12 0 0 0 0 13 14 4 5 17 4 5 5

# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre

## IPFS repo path
# export IPFS_PATH=/mnt/SSD/.ipfs

#if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
#then
#	exec fish
#fi

# powerline
#powerline-daemon -q
##POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

# PS1
#export PS1="${_GREEN}[${_YELLOW}\u${_WHITE}@${_BLUE}${_BOLD}\h${_WHITE}${_BOLD}|\W${_GREEN}]${_BLUE}e\$?${_RED}\$ ${_RESET}"
#export PS1="${_GREEN}\[${_YELLOW}\u${_WHITE}@${_BLUE}${_BOLD}\h${_WHITE}${_BOLD}-\W${_GREEN}\]${_BLUE}e\$?${_RED}${_RESET}\$ "
#export PS1="\[\e[0;32m\][ \[\e[0;33m\]\u\[\e[0;37m\]@\[\e[0;34m\]\h \[\e[0;32m\]] \[\e[0;37m\]\w \[\e[0;31m\]<\$?> \[\e[0;37m\]$ \[\e[0m\]"
export PS1="\[\e[0;32m\][ \[\e[0;33m\]\u\[\e[0;37m\]@\[\e[0;34m\]\h \t \[\e[0;32m\]] \[\e[0;35m\]<\$?> \[\e[0;37m\]\w \[\e[0;37m\]$ \[\e[0m\]"

## exec fish instead of bash as default
#[[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] && \
#    exec fish

# The next line updates PATH for the Google Cloud SDK.
[ -f '/opt/ABC/google-cloud-sdk/path.bash.inc' ] && . '/opt/ABC/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
[ -f '/opt/ABC/google-cloud-sdk/completion.bash.inc' ] && . '/opt/ABC/google-cloud-sdk/completion.bash.inc'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/archive/HOME/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/archive/HOME/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/archive/HOME/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/archive/HOME/Downloads/google-cloud-sdk/completion.bash.inc'; fi
