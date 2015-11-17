# Add some more custom software to PATH.
PATH=$PATH:"$HOME/usr/bin"
PATH=$PATH:/cluster/home04/infk/leeyu/jdk1.8.0_66/bin
PATH=$PATH:~/usr/bin:/Applications/MATLAB_R2015a.app/bin
PATH=$PATH:/Users/jasonlee/bazel-0.1.1/output
PATH=$PATH:/Users/jasonlee/srilm/lm/bin/macosx
PATH=$PATH:/Users/jasonlee/miniconda2/bin
export PATH
 
# Make sure pkg-config can find self-compiled software
# and libraries (installed to ~/usr)
#PKG_CONFIG_PATH=$PKG_CONFIG_PATH:~/usr/lib/pkgconfig
# export PKG_CONFIG_PATH
 
# Add custom compiled libraries to library search path.
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
# export LD_LIBRARY_PATH
 
# Add custom compiled libraries to library run path.
# LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib
# export LD_RUN_PATH
 
# Add custom Python modules to the Python path.
PYTHONPATH=$PYTHONPATH:/Users/jasonlee/Theano
export PYTHONPATH
 
# Java;s CLASSPATH customization
# CLASSPATH=$CLASSPATH:~/foo/bar.jar
# export CLASSPATH

