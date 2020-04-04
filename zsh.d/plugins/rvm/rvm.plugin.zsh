RVM_PATH="${RVM_PATH:-$HOME/.rvm}"

export PATH="$RVM_PATH/bin:$PATH"

[ -f "$RVM_PATH/scripts/rvm" ] && source "$RVM_PATH/scripts/rvm"

function _rvm() {
    if [ -f "$RVM_PATH/scripts/zsh/Completion/_rvm" ]; then
        source "$RVM_PATH/scripts/zsh/Completion/_rvm"
    fi
}

compdef _rvm rvm

alias rvd="rvm current"
alias rvd="rvm use default"
alias rvd="rvm use default"
alias rvl="rvm list"
alias rvu="rvm use"
