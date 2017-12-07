#LS
case "$(uname)" in
    Linux)
        alias ls='ls --color=auto' ;;
    Darwin)
        alias ls='ls -G' ;;
esac

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable

function ltx {
        pdflatex $1; bibtex $1; pdflatex $1; pdflatex $1; open "$1.pdf"
}

alias python_ipdb="python -m ipdb"

alias si="sinfo -o --long --Node --format='%.6N %.8T %.4c %.10m %.20f'"
alias sq="squeue -l --format='%.5i %.9q %.14j %.9u %.9b %.6D %.6N %.15L'"
alias sqy="sq | grep yunjae"
alias qj="srun --time=168:00:00 --qos=interactive --gres=gpu:1 --constraint=gpu_12gb --pty zsh"

#SSH
alias sd='ssh dco'

#alias python='python2'
#alias pip='pip2.7'
#alias ipython='ipython2'

alias sp='ssh prince'
alias nyu='ssh nyu'
alias sm='ssh mercer'
alias fa='cd /misc/kcgscratch1/ChoGroup/jasonlee/fair'

alias cs='ssh cs'
alias d1='ssh d1'
alias w1='ssh w1'
alias w2='ssh w2'
alias w3='ssh w3'
alias w4='ssh w4'
alias w5='ssh w5'
alias c4='ssh c4'
alias c5='ssh c5'
alias c6='ssh c6'
alias r9='ssh rose9'
alias gg="git add -u; git commit -m 'hi'; git push"

alias l1="ssh lion1.cs.nyu.edu"
alias l2="ssh lion2.cs.nyu.edu"
alias l3="ssh lion3.cs.nyu.edu"
alias l4="ssh lion4.cs.nyu.edu"
alias l5="ssh lion5.cs.nyu.edu"
alias l6="ssh lion6.cs.nyu.edu"
alias l7="ssh lion7.cs.nyu.edu"
alias l8="ssh lion8.cs.nyu.edu"
alias l9="ssh lion9.cs.nyu.edu"
alias l10="ssh lion10.cs.nyu.edu"
alias l11="ssh lion11.cs.nyu.edu"
alias l12="ssh lion12.cs.nyu.edu"
alias l13="ssh lion13.cs.nyu.edu"
alias l14="ssh lion14.cs.nyu.edu"
alias l15="ssh lion15.cs.nyu.edu"
alias l16="ssh lion16.cs.nyu.edu"
alias l17="ssh lion17.cs.nyu.edu"
alias l18="ssh lion18.cs.nyu.edu"
alias l19="ssh lion19.cs.nyu.edu"
alias l20="ssh lion20.cs.nyu.edu"
alias l21="ssh lion21.cs.nyu.edu"
alias l22="ssh lion22.cs.nyu.edu"
alias l23="ssh lion23.cs.nyu.edu"
alias l24="ssh lion24.cs.nyu.edu"
alias l25="ssh lion25.cs.nyu.edu"
alias l26="ssh lion26.cs.nyu.edu"

#GIT
alias grms='git ls-files | grep '\.swp$' | xargs git rm'

#GPU
alias gtop='watch -n 1 nvidia-smi'
alias cv='nvcc --version'

#SCREEN
alias c='clear'
alias cl='clear; ll'

#TMUX
alias ta='tmux a -t'
alias tl='tmux ls'
alias t='tmux'
alias tn="tmux new -s"

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
