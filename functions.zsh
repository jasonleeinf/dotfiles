function ltx {
        pdflatex $1; bibtex $1; pdflatex $1; pdflatex $1; open "$1.pdf"
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
        srun --time=168:00:00 --qos=interactive --gres=gpu:1 --constraint=gpu_12gb --pty zsh
    elif [ "$(whoami)" = "yl1363" ];
    then
        srun --time=168:00:00 --mem=10000 --cpus-per-task=2 --ntasks-per-node=1 --gres=gpu:p40:1 --pty /usr/bin/zsh
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
