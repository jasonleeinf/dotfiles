'''simple script for submitting slurm jobs'''

import os
import pdb
import time
import random
import datetime
import subprocess

ARG2IDX = {'tasks':1, # this is old
           'gpuid':2,
           'exp_name':3,
           'SHOULD_TRAIN':4,
           'LOAD_MODEL':5,
           'LOAD_TASKS':6,
           'LOAD_VOCAB':7,
           'LOAD_INDEX':8,
           'TASK_ORDERING':9,
           'BPP_METHOD':10,
           'N_BPPS':11,
           'BATCHES_BTW_VALIDATION':12,
           'HID_DIM':13,
           'LR':14,
           'PAIR_ENC':15,
           'DATE':16,
           'RANDOM_SEED':17
          }

DATE = datetime.datetime.now().strftime("%m-%d")
SCRATCH_PREFIX = '/misc/vlgscratch4/BowmanGroup/awang/ckpts/' + DATE + '/'

EXP_PREFIX = 'attn'
GPUID = str(0)
SHOULD_TRAIN = str(1)
LOAD_MODEL = str(0)
LOAD_TASKS = str(1)
LOAD_VOCAB = str(1)
LOAD_INDEX = str(1)
N_RUNS = 3

PAIR_TASKS = ['msrp', 'rte8', 'quora', 'snli', 'mnli', 'rte', 'sts-benchmark']
SINGLE_TASKS = ['sst', 'twitter-irony']
TASKS = PAIR_TASKS + SINGLE_TASKS

HID_DIMS = [1024]

BPP_METHOD = 'percent_tr'
N_BPPS = [1]
BATS_BTW_VALS = [1] #[100, 1000, 5000]
ORDERS = ['small_to_large'] #['small_to_large', 'large_to_small', 'random', 'random_per_pass']

OPTIMIZER = 'sgd'
LRS = [1.]
REGS = [1e-5, 1e-4, 1e-3, 1e-2, 1e-1, 0]

def build_args(): # TODO
    '''
    Build argument list from dictionary
    '''
    args = [0] * len(ARG2IDX)
    for arg, idx in ARG2IDX.items():
        args[idx] = arg
    return args

# Varying the validation metric for multi task
task = 'snli'
for n_run in range(N_RUNS):
    for bats_btw_val in BATS_BTW_VALS:
        for hid_dim in HID_DIMS:
            for order in ORDERS:
                for n_bpp in N_BPPS:
                    for lr in LRS:
                        for reg in REGS:
                            exp_name = "%s_%s_d%d_reg%.5f_r%d" % (EXP_PREFIX, task, hid_dim, reg, n_run)
                            dir_name = SCRATCH_PREFIX + exp_name
                            out_file = dir_name + '/sbatch.out'
                            err_file = dir_name + '/sbatch.err'
                            #if not os.path.exists(dir_name):
                            #    os.makedirs(dir_name)
                            bats_btw_val = n_bpp
                            random_seed = random.randint(1, 10000)
                            cmd = ["sbatch", "-J", exp_name, "-e", err_file, "-o", out_file,
                                   "--mem=16GB",
                                   #"run_stuff.sh", ','.join(task), GPUID, exp_name,
                                   "run_stuff.sh", task, GPUID, exp_name,
                                   SHOULD_TRAIN, LOAD_MODEL, LOAD_TASKS, LOAD_VOCAB, LOAD_INDEX,
                                   order, BPP_METHOD, str(n_bpp), str(bats_btw_val), str(hid_dim), str(lr),
                                   'attn', DATE, str(random_seed), OPTIMIZER, str(reg)]
                            #subprocess.call(cmd)
                            print(' '.join(cmd))
                            print("USED RANDOM SEED %d" % random_seed)

