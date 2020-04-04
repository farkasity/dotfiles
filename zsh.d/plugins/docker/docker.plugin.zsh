if [[ "$(uname -r)" =~ "Microsoft" ]]; then
    docker="docker.exe"
else
    docker="docker"
fi

alias dk="$docker"
alias dkb="$docker build"
alias dke="$docker exec"
alias dkis="$docker images"
alias dkr="$docker run"
alias dkri="$docker rmi"
alias dkrs="$docker restart"
alias dks="$docker search"
alias dksp="$docker stop"
alias dkst="$docker start"
