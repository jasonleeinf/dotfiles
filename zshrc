# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL" 

# Slurm
if [[ $(whoami) == "yl1363" ]]; then
	source /opt/ohpc/admin/lmod/lmod/init/zsh
else
	MODULEPATH=$MODULEPATH:/usr/local/etc/modulefiles
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
