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
alias tnslword='THEANO_FLAGS=base_compiledir=/tmp/theano.crunchy,device=cpu,floatX=float32 python character_base/translate.py -n -bpe /misc/kcgscratch1/ChoGroup/jasonlee/dl4mt-tutorial/models/bpe2char_two_layer_gru_decoder_adam.295000.npz /misc/kcgscratch1/ChoGroup/junyoung_exp/wmt15/deen/train/all_de-en.en.tok.bpe.word.pkl /misc/kcgscratch1/ChoGroup/junyoung_exp/wmt15/deen/train/all_de-en.de.tok.300.pkl /misc/kcgscratch1/ChoGroup/junyoung_exp/wmt15/deen/test/newstest2014-deen-src.en.tok.bpe results/hi2'
alias tnslchar='THEANO_FLAGS=base_compiledir=/tmp/theano.crunchy,device=cpu,floatX=float32 python character_base/translate.py -n -dec_c -enc_c -utf8 /misc/kcgscratch1/ChoGroup/jasonlee/dl4mt-tutorial/models/char2char_two_layer_gru_decoder_adam.95000.npz /misc/kcgscratch1/ChoGroup/junyoung_exp/wmt15/deen/train/all_de-en.en.tok.300.pkl /misc/kcgscratch1/ChoGroup/junyoung_exp/wmt15/deen/train/all_de-en.de.tok.300.pkl /misc/kcgscratch1/ChoGroup/junyoung_exp/wmt15/deen/test/newstest2014-deen-src.en.tok results/hi3'
alias sg='ssh gpu'
alias se='ssh eu'
alias sb='ssh br'
alias scs='ssh cscs'
alias nyu='ssh nyu'
alias sm='ssh mercer'
alias w1='ssh w1'
alias w2='ssh w2'
alias w3='ssh w3'
alias w4='ssh w4'
alias w5='ssh w5'
alias c4='ssh c4'
alias c5='ssh c5'
alias c6='ssh c6'
alias r9='ssh rose9'
alias gg='git add -u; git commit -m "hi"; git push'

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
