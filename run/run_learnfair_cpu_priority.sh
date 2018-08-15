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

#################
#number of nodes you are requesting
#SBATCH --nodes=1
#SBATCH --partition=priority

#################
#SBATCH —constraint=pascal

echo ${1}
eval ${1}
