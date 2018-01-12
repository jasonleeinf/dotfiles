#LS
case "$(uname)" in
    Linux)
        alias ls='ls --color=auto' ;;
    Darwin)
        alias ls='ls -G' ;;
esac

#SLURM
alias sinfo="sinfo -o --long --Node --format='%.6N %.8T %.4c %.10m %.20f'"
alias sq="squeue -l --format='%.9i %.9q %.14j %.9u %.9b %.6D %.6N %.15L'"
alias sqj="sq | grep $(whoami)"

alias vundle='vim +PluginInstall +qall'

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable

alias nasty='find . -name "*.pyc" -print -type f -delete; find . -name "*.swp" -print -type f -delete; find . -name "*.swo" -print -type f -delete; find . -name "*.py~" -print -type f -delete'

alias python_ipdb="python -m ipdb"

alias sb_cs="sbatch ~/dotfiles/run_cassio.sh"

#SSH
alias sp='ssh prince'
alias nyu='ssh nyu'
alias fa='cd /misc/kcgscratch1/ChoGroup/jason/fair'

alias cs='ssh cs'
alias d1='ssh d1'
alias gg="git add -u; git commit -m 'hi'; git push"

#GIT
alias grms='git ls-files | grep '\.swp$' | xargs git rm'

#GPU
alias gtop='watch -n 1 nvidia-smi'
alias cv='nvcc --version'

alias c='clear'
alias cl='clear; ll'

#TMUX
alias ta='tmux a -t'
alias tl='tmux ls'
alias t='tmux'
alias tn="tmux new -s"

#EDITORS
alias v='vim'
alias vi='vim'

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

alias sc="source"
