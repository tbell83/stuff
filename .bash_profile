#source ~/.git-completion.bash
#source ~/.git-prompt.sh

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PATH=$PATH:/Users/thomasb/bin

##
# Your previous /Users/thomasb/.bash_profile file was backed up as /Users/thomasb/.bash_profile.macports-saved_2013-06-05_at_15:21:11
##

# MacPorts Installer addition on 2013-06-05_at_15:21:11: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/thomasb/.bash_profile file was backed up as /Users/thomasb/.bash_profile.macports-saved_2013-10-14_at_11:05:29
##

# MacPorts Installer addition on 2013-10-14_at_11:05:29: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi
