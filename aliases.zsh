#LS
case "$(uname)" in
    Linux)
        alias ls='ls --color=auto' ;;
    Darwin)
        alias ls='ls -G' ;;
esac

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable

#SSH
alias sd='ssh dco'
alias sg='ssh gpu'
alias se='ssh eu'
alias sb='ssh br'
alias scs='ssh cscs'

#GIT
alias grms='git ls-files | grep '\.swp$' | xargs git rm'

#GPU
alias gtop='nvidia-smi -l 1'
alias cv='nvcc --version'

#SCREEN
alias c='clear'
alias cl='clear; ll'

#TMUX
alias ta='tmux a -t'
alias tl='tmux ls'
alias t='tmux'

#EDITORS
alias v='vim'

#COLORFULNESS
alias grep="grep --colour"

#DIRS
alias -g ...='cd ../../'           #cd ...
alias -g ....='cd ../../../'       #cd ....
alias -g .....='cd ../../../../'   #cd .....
alias cnt='ls -1 | wc -l'

# Make some possibly destructive commands more interactive.
alias rm='rm -iv'
alias rd='rm -irv'
alias mv='mv -iv'
alias cp='cp -iv'

alias sr='screen -r'
alias sl='screen -list'

alias sc="source"

alias mli='matlab -nodesktop'
alias mls='matlab -nodisplay -nojvm -nosplash -nodesktop -r'

alias uzp='tar -zxvf'
