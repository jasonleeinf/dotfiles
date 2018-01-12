#!/bin/bash
#
#all commands that start with SBATCH contain commands that are just used by SLURM for scheduling
#################
#time you think you need; default is one hour
#in minutes
# In this case, hh:mm:ss, select whatever time you want, the less you ask for the faster your job will run.
# Default is one hour, this example will run in  less that 5 minutes.
#SBATCH --time=48:00:00

#################
#a file for job output, you can check job progress
#SBATCH --output=/home/yunjae/slurm/slurm-%j.out

#################
# --gres will give you one GPU, you can ask for more, up to 8 (or how ever many are on the node/card)
#SBATCH --gres=gpu:1
#SBATCH --exclude=vine5,vine6,vine7,vine8,vine9,vine10,vine11,vine12,vine13,vine14

#################
#number of nodes you are requesting
#SBATCH --nodes=1

#################
#memory per node; default is 4000 MB per CPU
#SBATCH --mem=4000
#SBATCH --constraint=gpu_12gb

#################
# Have SLURM send you an email when the job ends or fails, careful, the email could end up in your clutter folder
#SBATCH --mail-type=END,FAIL # notifications for job done & fail
#SBATCH --mail-user=jason@cs.nyu.edu

SCR=$1
echo ${SCR}
srun ${SCR}
