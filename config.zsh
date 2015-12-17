#HISTORY
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1717

unset beep
set nobeep

#LOAD PROFILE
if [ -x /etc/profile ]; then
    setopt -G
    . /etc/profile
    setopt +G
fi

#EDITORS
export EDITOR='vim'
export VISUAL='vim'

