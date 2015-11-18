# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ..='cd ..'
alias ...='cd ../..'
alias scr='cd $SCRATCH'

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias w="cd ~/workspace"

alias sc="source"

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF --color=always'
alias la='ls -alF --color=always'
alias ls='ls -F --color=always'

alias mli='matlab -nodesktop'
alias mls='matlab -nodisplay -nojvm -nosplash -nodesktop -r'

alias ip='ipython'
alias p='python'
alias python='python2.7'

alias uzp='tar -zxvf'
