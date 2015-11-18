SCR1=/cluster/work/scr1/leeyu    
SCR2=/cluster/work/scr2/leeyu    

# Add some more custom software to PATH.
PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin
PATH=$PATH:$SCR1/usr/bin
PATH=$PATH:$SCR1/jdk1.8.0_66/bin
PATH=$PATH:$SCR1/usr/bin/python2.7
export PATH

PKG_CONFIG_PATH=
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$SCR1/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH

# Add custom compiled libraries to library search path.
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
# export LD_LIBRARY_PATH
 
# Add custom compiled libraries to library run path.
# LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib
# export LD_RUN_PATH
  
# Add custom Python modules to the Python path.
PYTHONPATH=$SCR1/usr/bin/python2.7
export PYTHONPATH
 
# Java's CLASSPATH customization
# CLASSPATH=$CLASSPATH:~/foo/bar.jar
# export CLASSPATH
JAVA_HOME=$SCR1/jdk1.8.0_66
#JAVA_HOME=$JAVA_HOME:~/jdk1.8.0_66/bin/java
export JAVA_HOME
