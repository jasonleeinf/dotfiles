# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ..='cd ..'
alias ...='cd ../..'

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias w="cd ~/workspace"

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lFG'
alias la='ls -alFG'
alias ls='ls -F'

alias mli='matlab -nodesktop'
alias mls='matlab -nodisplay -nojvm -nosplash -nodesktop -r'

alias ip='ipython'
alias p='python'
alias python='python2.7'

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
#alias grep='grep --color=auto --exclude-dir=\.svn'
 
# Shortcut for using the Kdiff3 tool for svn diffs.
#alias svnkdiff3='svn diff --diff-cmd kdiff3'

