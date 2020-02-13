# turn on command substitution in the prompt
setopt prompt_subst

CURDIR="%{$fg_bold[cyan]%}%~%{$reset_color%}"
PREFIX=""
SUFFIX="%(?:%{$fg_bold[green]%}λ:%{$fg_bold[red]%}λ)%{$reset_color%} "

export PROMPT="${PREFIX} ${CURDIR} ${SUFFIX}"

