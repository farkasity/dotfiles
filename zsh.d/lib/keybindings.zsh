#
# key bindings
#

# Make sure that the terminal is in application mode when zle is active
# since only then values from $terminfo are valid
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init() {
        echoti smkx
    }
    function zle-line-finish() {
        echoti rmkx
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# emacs key bindings
bindkey -e

if [[ -n "${terminfo[khome]}" ]]; then
    bindkey "${terminfo[khome]}" beginning-of-line
fi
if [[ -n "${terminfo[kend]}" ]]; then
    bindkey "${terminfo[kend]}" end-of-line
fi
if [[ -n "${terminfo[kcub1]}" ]]; then
    bindkey "${terminfo[kcub1]}" backward-char
fi
if [[ -n "${terminfo[kcuf1]}" ]]; then
    bindkey "${terminfo[kcuf1]}" forward-char
fi
if [[ -n "${terminfo[kcuu1]}" ]]; then
    bindkey "${terminfo[kcuu1]}" up-line-or-history
fi
if [[ -n "${terminfo[kcud1]}" ]]; then
    bindkey "${terminfo[kcud1]}" down-line-or-history
fi
if [[ -n "${terminfo[kpp]}" ]]; then
    bindkey "${terminfo[kpp]}" beginning-of-buffer-or-history
fi
if [[ -n "${terminfo[knp]}" ]]; then
    bindkey "${terminfo[knp]}" end-of-buffer-or-history
fi
if [[ -n "${terminfo[kich1]}" ]]; then
    bindkey "${terminfo[kich1]}" overwrite-mode
fi
if [[ -n "${terminfo[kdch1]}" ]]; then
    bindkey "${terminfo[kdch1]}" delete-char
fi

case $TERM in
    rxvt*|xterm*)
        bindkey "^[[7~" beginning-of-line #Home key
        bindkey "^[[8~" end-of-line #End key
        bindkey "^[Oc" forward-word # control + right arrow
        bindkey "^[Od" backward-word # control + left arrow
        bindkey "^H" backward-kill-word # control + backspace
        bindkey "^[[3^" kill-word # control + delete
    ;;

    linux)
        bindkey "^[[1~" beginning-of-line #Home key
        bindkey "^[[4~" end-of-line #End key
    ;;

    screen|screen-*)
        bindkey "^[[1~" beginning-of-line #Home key
        bindkey "^[[4~" end-of-line #End key
        bindkey "^[Oc" forward-word # control + right arrow
        bindkey "^[Od" backward-word # control + left arrow
        bindkey "^H" backward-kill-word # control + backspace
        bindkey "^[[3^" kill-word # control + delete
    ;;
esac

bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward
bindkey "^[[A" history-beginning-search-backward #Up Arrow
bindkey "^[[B" history-beginning-search-forward #Down Arrow
bindkey "^[[3~" delete-char #Del key
