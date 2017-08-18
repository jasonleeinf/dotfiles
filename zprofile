export PATH="/misc/kcgscratch1/CUDA/cuda-8.0.21/bin:$PATH"
export PATH="/misc/kcgscratch1/CUDA/cuda-8.0.21/lib64:$PATH"
export PATH="/home/yunjae/.local/bin:$PATH"
#export PATH="/home/yunjae/Python-2.7.13:$PATH"

export PYTHONPATH="/home/yunjae/Python-2.7.13"

export CUDA_HOME=/misc/kcgscratch1/CUDA/cuda-8.0.21
export CUDA_ROOT=/misc/kcgscratch1/CUDA/cuda-8.0.21

export LD_LIBRARY_PATH="/home/yunjae/.local/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/gcc5/lib64:$LD_LIBRARY_PATH"

export CFLAGS="-I$CUDA_ROOT/include"
export LDFLAGS="-L$CUDA_ROOT/lib64"

##

alias scr="cd /misc/kcgscratch1/ChoGroup/jasonlee"
alias dat="cd /local/home/leeyu/dataset/"
