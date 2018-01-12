#!/bin/zsh
#
#all commands that start with SBATCH contain commands that are just used by SLURM for scheduling
#################
#time you think you need; default is one hour
#in minutes
# In this case, hh:mm:ss, select whatever time you want, the less you ask for the faster your job will run.
# Default is one hour, this example will run in  less that 5 minutes.
#SBATCH --time=72:00:00

#################
#a file for job output, you can check job progress
#SBATCH --output=/home/yl1363/slurm/slurm-%j.out

#################
# --gres will give you one GPU, you can ask for more, up to 8 (or how ever many are on the node/card)
#SBATCH --gres=gpu:p40:1

#################
#number of nodes you are requesting
#SBATCH --nodes=1

#################
# Have SLURM send you an email when the job ends or fails, careful, the email could end up in your clutter folder
#SBATCH --mail-type=END,FAIL # notifications for job done & fail
#SBATCH --mail-user=jason@cs.nyu.edu

echo ${1}
source /opt/ohpc/admin/lmod/lmod/init/zsh
module load pytorch/python3.6/0.3.0_4
module load python3/intel/3.6.3
module load cuda/8.0.44
alias python=python3

eval ${1}
