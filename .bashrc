#
# ~/.bashrc
#


# real prompt

export PS1="\[$(tput setaf 6)\]\u\[$(tput setaf 3)\]@\[$(tput setaf 6)\]\h\[$(tput sgr0)\]\w$ "
export VISUAL="vim"


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

color_prompt=yes
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	        alias ls='ls --color=auto'
		    #alias dir='dir --color=auto'
		        #alias vdir='vdir --color=auto'

			    alias grep='grep --color=auto'
			        alias fgrep='fgrep --color=auto'
				    alias egrep='egrep --color=auto'
									    fi


################################PATHS###################################3

export PATH=~/prj/bash:$PATH
export PATH=~/dwm/statusbar:$PATH

									    
#################################ALIASES##################################3
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias get='sudo pacman -S'
alias remove='sudo pacman -R'
alias search='sudo pacman -Ss'
alias update='sudo pacman -Syu'
alias home='sudo netctl start Mimu '
alias vcu='sudo netctl start vcu'
alias mfeh='feh -g 640x480 -z -s -f filename'

#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# just for pastebin
pb () {
	  curl -F "c=@${1:--}" https://ptpb.pw/
  }
export -f pb


#todo 
export PATH=~/files/git/todo:$PATH
alias t='todo.sh -n -c -d ~/files/git/todo/todo.cfg'

tlist() {
	t list | sort
}
export -f tlist

#t () {
#	if [[ $@ == "list" ]]; then
#		command t list | sort
#        else
#		command t "$@"
#	fi
#    }

#gcalcli
alias gcal='gcalcli calm'
alias gcaladd='gcalcli quick --calendar jake.happersett@gmail.com'
