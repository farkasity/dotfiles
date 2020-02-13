# fix for tmux on linux
if [[ "$(uname -o)" =~ 'GNU/Linux' ]] ; then
    export EVENT_NOEPOLL=1
fi


alias tm="tmux"
alias tma="tmux attach"
alias tml="tmux attach -t 0"
alias tmls="tmux list-settions"
