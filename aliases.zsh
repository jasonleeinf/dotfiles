#LS
case "$(uname)" in
    Linux)
        alias ls='ls --color=auto' ;;
    Darwin)
        alias ls='ls -G' ;;
esac

#DECODE
alias dec_iwslt_ende="python /scratch/yl1363/nonauto-neural-gpu/transformer_jt/run.py --main_path /scratch/yl1363/nonauto-neural-gpu/transformer_jt --fast --use_argmax --next_dec_input both --load_vocab --params small --mode test --valid_repeat_dec 20 --remove_repeats --ffw_block highway --dataset iwslt-ende --debug"
alias dec_iwslt_deen="python /scratch/yl1363/nonauto-neural-gpu/transformer_jt/run.py --main_path /scratch/yl1363/nonauto-neural-gpu/transformer_jt --fast --use_argmax --next_dec_input both --load_vocab --params small --mode test --valid_repeat_dec 20 --remove_repeats --ffw_block highway --dataset iwslt-deen --debug"

alias dec_wmt15_ende="python /scratch/yl1363/nonauto-neural-gpu/transformer_jt/run.py --main_path /scratch/yl1363/nonauto-neural-gpu/transformer_jt --fast --use_argmax --next_dec_input both --load_vocab --params big --vocab_size 60000 --mode test --valid_repeat_dec 20 --remove_repeats --ffw_block highway --dataset wmt15-ende --debug"
alias dec_wmt15_deen="python /scratch/yl1363/nonauto-neural-gpu/transformer_jt/run.py --main_path /scratch/yl1363/nonauto-neural-gpu/transformer_jt --fast --use_argmax --next_dec_input both --load_vocab --params big --vocab_size 60000 --mode test --valid_repeat_dec 20 --remove_repeats --ffw_block highway --dataset wmt15-deen --debug"

#SLURM
alias sinfo="sinfo -o --long --Node --format='%.6N %.8T %.4c %.10m %.20f'"
alias sq="squeue -l --format='%.9i %.9q %.40j %.9u %.9b %.6D %.6N %.15L'"
alias sqj="sq | grep $(whoami)"
alias sq40="sq | grep gpu:p40"
alias sq100="sq | grep gpu:p100"
alias sq40-="sq | grep gpu:p40 | grep gpu-"
alias sq100-="sq | grep gpu:p100 | grep gpu-"

alias jt="cd /scratch/yl1363/nonauto-neural-gpu/transformer_jt"

alias vundle='vim +PluginInstall +qall'

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable

alias nasty='find . -name "*.pyc" -print -type f -delete; find . -name "*.swp" -print -type f -delete; find . -name "*.swo" -print -type f -delete; find . -name "*.py~" -print -type f -delete'

alias python_ipdb="python -m ipdb"

alias sb_cs="sbatch ~/dotfiles/run_cassio.sh"

#SSH
alias sp='ssh prince'
alias sp0='ssh prince0'
alias sp1='ssh prince1'

alias nyu='ssh nyu'
alias fa='cd /misc/kcgscratch1/ChoGroup/jason/fair'

alias cs='ssh cs'
alias d1='ssh d1'
alias gg="git add -u; git commit -m 'hi'; git push"

alias nyu1990='ssh -L 1990:127.0.0.1:1990 nyu'
alias nyu1991='ssh -L 1991:127.0.0.1:1991 nyu'
alias nyu1992='ssh -L 1992:127.0.0.1:1992 nyu'
alias nyu1993='ssh -L 1993:127.0.0.1:1993 nyu'
alias nyu1994='ssh -L 1994:127.0.0.1:1994 nyu'
alias nyu1995='ssh -L 1995:127.0.0.1:1995 nyu'
alias nyu1996='ssh -L 1996:127.0.0.1:1996 nyu'
alias nyu1997='ssh -L 1997:127.0.0.1:1997 nyu'
alias nyu1998='ssh -L 1998:127.0.0.1:1998 nyu'
alias nyu1999='ssh -L 1999:127.0.0.1:1999 nyu'
alias nyu2000='ssh -L 2000:127.0.0.1:2000 nyu'

alias prince1990='ssh -L 1990:127.0.0.1:1990 prince'
alias prince1991='ssh -L 1991:127.0.0.1:1991 prince'
alias prince1992='ssh -L 1992:127.0.0.1:1992 prince'
alias prince1993='ssh -L 1993:127.0.0.1:1993 prince'
alias prince1994='ssh -L 1994:127.0.0.1:1994 prince'
alias prince1995='ssh -L 1995:127.0.0.1:1995 prince'
alias prince1996='ssh -L 1996:127.0.0.1:1996 prince'
alias prince1997='ssh -L 1997:127.0.0.1:1997 prince'
alias prince1998='ssh -L 1998:127.0.0.1:1998 prince'
alias prince1999='ssh -L 1999:127.0.0.1:1999 prince'
alias prince2000='ssh -L 2000:127.0.0.1:2000 prince'

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
