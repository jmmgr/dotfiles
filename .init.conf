#!/usr/bin/env bash
platform='unknow'
unamestr=$(uname)

# inform the correct platform in the platform variable
if [[ "$unamestr" == 'Linux' ]]; then 
	platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
	platform='osx'
fi

if [[ $platform == 'osx' ]]; then
	# set vim to one version with clipboard
	alias vim='/usr/local/bin/vim'
	export EDITOR='/usr/local/bin/vim'
	export OPEN='open'
	# delete without confirmation
	setopt rm_star_silent
	export JAVA_HOME=$(/usr/libexec/java_home)
	$(boot2docker shellinit) 
elif [[ $platform == 'linux' ]]; then 
 	# use gvim as vim (has clipboard support)
 	alias vim='gvim -v'
	export EDITOR='gvim -v'
 	alias sudo='sudo '
	alias open='xdg-open '
	export OPEN='xdg-open'
	alias ogit='. ogit' # this is so ogit is executed in the same shell so it can pick the alias of open.
 	# not stop with C-s flow control (C-q allows it again). want to use that for tmux
 	stty -ixon
 	# making it 256 colors
 	export TERM=xterm-256color 
 	# making the capslock as control + esc
 	# 1. with tweak tool (gnome) set caps locks as control
 	# 2. since we don't use esc outside termial, we can set it at the beginning if not running.
 	# -> with 'xcape -d' you can know which key you need to map
 	# if ! pgrep 'xcape' > /dev/null
 	# 	then
 	# 	xcape -e '#66=Escape'
 	# fi
fi


# Adding PATH and alias
# Remember PATH doesnt work with "~/" you need to add the full path
export NVM_DIR=$HOME"/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
PATH=$PATH:$NVM_DIR

#add path from dropbox
export DOTFILES_BIN=$HOME"/git_private/dotfiles/bin"
PATH=$PATH:$DOTFILES_BIN

alias dnode="node-vim-inspector"
alias grepn="grep -rn --exclude-dir={node_modules,log,coverage,.nyc_output}"
alias findn="find . -name"
alias weather="curl -4 http://wttr.in/Hongkong"
alias treen="tree -L 3 -I 'node_modules|coverage'"

#git alias
alias gcm="git commit -m"
alias gc="git commit"
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gco="git checkout"

# switch to ORIGIN- or normal
alias co=". co"
# clear tmux pane
#alias cls="clear & tmux clear-history"
alias pc="gpaste-client"
alias pcs="gpaste-client set"
alias pcg="gpaste-client get"


export HISTCONTROL=ignoreboth:erasedups

# When linux paste something weird as ~[200....~ do: printf "\e[?2004l" 
# is called bracketed paste mode
