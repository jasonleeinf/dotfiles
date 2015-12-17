# Path to your oh-my-zsh installation.
export ZSH=/Users/jasonlee/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

[ -z "$PS1" ] && return

. ~/.zsh/prompt.zsh
. ~/.zsh/config.zsh
. ~/.zsh/bindings.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/aliases.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git colored-man-pages colorize cp rsync safe-paste vundle z brew)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jasonlee/bin/rad5R0_macosx_bin:/Users/jasonlee/bin:/Users/jasonlee/macvim/src/MacVim:/opt/X11/bin:/usr/local/git/bin:/Library/TeX/texbin:/Users/jasonlee/usr/bin:/Applications/MATLAB_R2015a.app/bin:/Users/jasonlee/bazel-0.1.1/output:/Users/jasonlee/srilm/lm/bin/macosx"

true
