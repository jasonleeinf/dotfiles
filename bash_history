la
vim ~/.bashrc 
vim ~/.bash_aliases 
vim createlinks
la
la dotfiles/
rm dotfiles/ha
ll
cd dotfiles/
git add .
git status
git commit -m "dotfiles"
git push
git remote set-url origin git@github.com:jasonylee/dotfiles.git
ll
vim vimrc 
git add .
git status
git commit -m "dotfiles"
git config --global --edit
ll
vim bashrc 
ls -lah ~
ls -lah ~/.ssh
ssh-keygen -t rsa
ls -lah ~/.ssh/
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
more ~/.ssh/id_rsa.pub 
git clone git@github.com:jasonylee/dotfiles.git
cd dotfiles/
ls -lah
./createlinks 
exit
mkdir ~/.vim/colors
vim ~/.vim/colors/hybrid_reverse.vim
la
pwd
la
exit
pwd
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim ~/.vimrc 
la
man ls
quota -s
module load cuda
module avail
git clone git@github.com:tensorflow/tensorflow.git
vim ~/.bashrc 
source ~/.bashrc
ll
wget http://python.org/ftp/python/2.7.5/Python-2.7.5.tgz
tar -zxvf Python-2.7.5.tgz 
cd Python-2.7.5
ll
./configure 
ll
cd ipython/
ll
cd ..
ll
la
make
make install
git clone git@github.com:ipython/ipython.git
echo $HOME
./configure --prefix=$HOME/.local
cd ~
ll
cd la
la
pwd
mkdir usr
./configure --prefix=$HOME/usr
make
make install
vim ~/.bash_profile 
vim ~/.profile 
cd ~
ll
cd usr
ll
cd ..
vim ~/.profile 
which python
vim ~/.profile 
which python
source ~/.profile 
source ~/.bash_profile 
which py
which python
pwd
python
python --version
python2.7
vim ~/.bash_aliases 
source ~/.bash_aliases 
p
which python
python --version
ll
cd ipython/
ll
python setup.py 
python setup.py install
ipython
python -m IPython
ll
python setup.py install
ll
ipython
cd ~; wget https://pypi.python.org/packages/source/p/pip/pip-7.1.2.tar.gz#md5=3823d2343d9f3aaab21cf9c917710196
ll
cd -
ls
ll
cd ~
ll
tar -zxvf pip-7.1.2.tar.gz 
ll
cd pip-7.1.2
ll
python setup.py install
cd ~; wget https://pypi.python.org/packages/source/s/setuptools/setuptools-18.5.tar.gz#md5=533c868f01169a3085177dffe5e768bb
ll
tar -zxvf setuptools-18.5.tar.gz 
cd setuptools-18.5
ll
python setup.py install
cd ~
ll
cd pip-7.1.2
ll
python setup.py install
cd ~
pip
pip install traitlets
ll
cd ipython/
cd 
ip
pip install pexpect
ip
pip install pickleshare
ip
pip install simplegeneric
ip
p --version
ip
ll
rm *.gz
rm *.tgz
ll
cd dotfiles/
ll
la
rm -rf .git
ll
cd ..
git clone git@github.com:jasonylee/dotfiles_linux.git
for f in 'ls dotfiles'; do mv dotfiles/$f dotfiles_linux/$f; done
ll dotfiles_linux/
for f in ~/dotfiles; do mv dotfiles/$f dotfiles_linux/$f; done
for f in ~/dotfiles; do mv ~/dotfiles/$f ~/dotfiles_linux/$f; done
for f in dotfiles; do echo $f; done
for f in dotfiles/*; do echo $f; done
cd dotfiles
for f in *; do echo $f; done
for f in *; cp $f ~/dotfiles_linux/$f; done
./createlinks 
cd 
la
la ~/.ssh/
ll
l
la
cd dotfiles_linux/
la
