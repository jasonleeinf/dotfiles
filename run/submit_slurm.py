import os
import pdb
import time
import random
import datetime
import subprocess

dir_name = "/home/yl1363/scratch/nonauto-neural-gpu/transformer_jt/"
command = "python run.py --fast --use_argmax --eval_every 100 --event_path ./events5/ --train_repeat_dec 4 --ffw_block highway --next_dec_input emb --denoising_prob 0.5 --layerwise_denoising_weight --model_str old_cor"

cmd = 

cmd = ["sbatch", "-J", exp_name, "-e", err_file, "-o", out_file,
       "--mem=16GB",
       "run_stuff.sh", task, GPUID, exp_name,
       SHOULD_TRAIN, LOAD_MODEL, LOAD_TASKS, LOAD_VOCAB, LOAD_INDEX,
       order, BPP_METHOD, str(n_bpp), str(bats_btw_val), str(hid_dim), str(lr),
       'attn', DATE, str(random_seed), OPTIMIZER, str(reg)]
