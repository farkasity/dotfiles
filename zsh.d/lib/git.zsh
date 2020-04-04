function git_p() {
}

function git_branch() {
    local ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null)
    local ret=$?

    if [[ $ret != 0 ]]; then
        [[ $ret == 128 ]] && return

        ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    fi

    echo ${ref#refs/heads/}
}

function git_user_name() {
    command git config user.name 2> /dev/null
}

function git_user_email() {
    command git config user.email 2> /dev/null
}
