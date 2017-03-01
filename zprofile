export PATH="/usr/local/cuda/bin:$PATH"
export PATH="/usr/local/cuda/lib64:$PATH"
export PATH="/opt/gcc5/bin:$PATH"
export PATH="/local/home/leeyu/.local/bin:$PATH"
export PATH="/local/home/leeyu/Python-2.7.13:$PATH"

export PYTHONPATH="/local/home/leeyu/Python-2.7.13"

export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda

export LD_LIBRARY_PATH="/home/leeyu/.local/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/gcc5/lib64:$LD_LIBRARY_PATH"

export CFLAGS="-I$CUDA_ROOT/include"
export LDFLAGS="-L$CUDA_ROOT/lib64"

##

alias scr="cd /local/home/leeyu/scratch/"
alias dat="cd /local/home/leeyu/dataset/"
alias wmt="cd /local/home/leeyu/dataset/wmt15"
alias nasty='rm -rf ./.*swp; rm -rf ./*pyc;rm -rf ./*/.*swp; rm -rf ./*/*pyc'
