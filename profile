# Add some more custom software to PATH.
PATH=$PATH:"$HOME/usr/bin"
PATH=$PATH:$HOME/jdk1.8.0_66/bin
export PATH

PKG_CONFIG_PATH=$PKG_CONFIG_PATH:~/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH

# Add custom compiled libraries to library search path.
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
# export LD_LIBRARY_PATH
 
# Add custom compiled libraries to library run path.
# LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib
# export LD_RUN_PATH
 
# Add custom Python modules to the Python path.
PYTHONPATH=$PYTHONPATH:/Users/jasonlee/Theano
export PYTHONPATH
 
# Java's CLASSPATH customization
# CLASSPATH=$CLASSPATH:~/foo/bar.jar
# export CLASSPATH
JAVA_HOME=$JAVA_HOME:~/jdk1.8.0_66/bin/java
export JAVA_HOME
