export CLICOLOR=1
source /usr/share/bash-completion/completions/git
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1="\W \$ "
export PS1='\W $(__git_ps1 "(%s)") \$ '
#export PS1='\t H#\! \u:\w$(__git_ps1 "{%s}") -->> '

if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
