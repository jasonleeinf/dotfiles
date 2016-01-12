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
alias sc='ssh cscs'

alias c='clear'

#EDITORS
alias v='vim'

#COLORFULNESS
alias grep="grep --colour"

#DIRS
alias -g ...='cd ../../'           #cd ...
alias -g ....='cd ../../../'       #cd ....
alias -g .....='cd ../../../../'   #cd .....

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
