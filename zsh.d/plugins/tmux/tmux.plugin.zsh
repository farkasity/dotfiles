# fix for tmux on linux
if [[ "$(uname -o)" =~ 'GNU/Linux' ]] ; then
    export EVENT_NOEPOLL=1
fi

alias tma="tmux attach -t"
alias tml="tmux list-sessions"
