if [ ! -e ~/.vimrc ] ; then 
	ln -s ~/bash_conf/vimrc ~/.vimrc
fi
if [ ! -e ~/.gitconfig ] ; then
	ln -s ~/bash_conf/gitconfig ~/.gitconfig 
fi
if [ ! -e ~/.gitignore_global ] ; then
	ln -s ~/bash_conf/gitignore_global ~/.gitignore_global
fi

if [ -e /etc/bash.bashrc ] ; then
	source /etc/bash.bashrc
fi
if [ -e ~/bash_conf/bashrc ] ; then
	source ~/bash_conf/bashrc
fi
if [ -e ~/bash_conf/bash_dont_think.sh ] ; then
	source ~/bash_conf/bash_dont_think.sh
fi
if [ -e ~/bash_conf/git-completion.bash ] ; then
	source ~/bash_conf/git-completion.bash
fi

if [[ $(which brew) != '' && -f `brew --prefix`/etc/bash_completion ]]; then
	source `brew --prefix`/etc/bash_completion
fi

if [ -e ~/nvm/nvm.sh ] ; then
	source ~/nvm/nvm.sh
	source ~/nvm/bash_completion
fi

export LC_CTYPE='en_US.UTF-8'

if [ -e ~/.rvm/scripts/rvm ] ; then
	source ~/.rvm/scripts/rvm # Load RVM into a shell session as a function
fi