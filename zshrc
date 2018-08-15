# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL" 

# Slurm
if [[ $(whoami) == "yl1363" ]]; then
	source /opt/ohpc/admin/lmod/lmod/init/zsh
    module load pytorch/python3.6/0.3.0_4
    alias python=python3
    alias pip=pip3
elif [[ $(whoami) == "jasonleeinf" ]]; then
    if [[ $(hostname) != "jasonleeinf-mbp" ]]; then
        source /etc/profile
        module purge
        module load cuda/9.0
        module load cudnn/v7.0-cuda.9.0
    fi
elif [[ $(whoami) == "yunjae" ]]; then
	MODULEPATH=$MODULEPATH:/usr/local/etc/modulefiles
    export SCR=/misc/kcgscratch1/ChoGroup/jason
else
fi

. ~/.zsh/prompt.zsh
. ~/.zsh/config.zsh
. ~/.zsh/bindings.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/aliases.zsh
. ~/.zprofile
. ~/.zsh/functions.zsh

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

autoload zmv

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git colored-man-pages colorize cp rsync safe-paste vundle brew)

[ -e ~/.zsh/custom.zsh ] && . ~/.zsh/custom.zsh

umask 002

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
