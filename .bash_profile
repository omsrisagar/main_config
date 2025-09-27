export CLICOLOR=1
source /usr/share/bash-completion/completions/git
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1="\W \$ "
export PS1='\W $(__git_ps1 "(%s)") \$ '
#export PS1='\t H#\! \u:\w$(__git_ps1 "{%s}") -->> '

# Needed to have conda activate working in tmux interactive login shell (like tulsi). cudaxxxs are server login shells not interative login shells, so not needed there.
# https://unix.stackexchange.com/questions/741777/why-does-conda-fail-inside-tmux-even-though-it-works-in-bash
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
