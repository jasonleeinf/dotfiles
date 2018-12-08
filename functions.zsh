function ltx {
        pdflatex $1; bibtex $1; pdflatex $1; pdflatex $1; open "$1.pdf"
}

function sl() {
    ssh -L "$1":localhost:"$1" "$2"
}

function kp() {
    fuser -k "$1"/tcp
}

function clean() {
    for var in "$@"
    do
        rm -rfI event/"$var"
        rm -rfI log/"$var"
        rm -rfI model/"$var"
        rm -rfI param/"$var"
        rm -rfI decoding/"$var"
    done
}

function kpa() {
    for i in $(seq 1980 2010); do kp $i; done
}

function tb() {
    export CUDA_VISIBLE_DEVICES=; tensorboard --port="$1" --logdir="$2"
}

function scr() {
    if [ "$(whoami)" = "yunjae" ]; 
    then
        cd "/misc/kcgscratch1/ChoGroup/jason"
    elif [ "$(whoami)" = "jason" ];
    then
        cd "/Users/jason/scratch"
    elif [ "$(whoami)" = "yl1363" ];
    then
        cd "/scratch/yl1363"
    else
        cd "~"
    fi
}

function sint() {
    if [ "$(whoami)" = "yunjae" ]; 
    then
        srun --time=168:00:00 --mem=20000 --qos=interactive --exclude=vine3,vine5,vine6,vine7,vine8,vine9,vine10,vine11,vine12,vine13,vine14 --gres=gpu:1 --constraint=gpu_12gb --pty zsh
        
    elif [ "$(whoami)" = "yl1363" ];
    then
        srun --time=168:00:00 --mem=10000 --exclude=gpu-61,gpu-63,gpu-35 --gres=gpu:p40:1 --pty /usr/bin/zsh
    else
        echo "no slurm"
    fi

}
alias sint=sint

function sbat() {
    if [ "$(whoami)" = "yunjae" ]; 
    then
        sbatch ~/dotfiles/run_cassio.sh $1
    elif [ "$(whoami)" = "yl1363" ];
    then
        sbatch ~/dotfiles/run_prince.sh $1
    else
        echo "no slurm"
    fi

}
