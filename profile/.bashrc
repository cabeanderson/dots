#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\u\[$(tput setaf 23)\]@\[$(tput setaf 61)\]\h \[$(tput setaf 23)\]\W\[ $(tput setaf 89)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 88)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 88)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

export PATH=/home/cabe/bin:$PATH
export PRINTER=Brother_MFC-7860DW

# System Maintainence
alias sdn="sudo shutdown -h now"

# Some aliases
alias e="sudo emerge"
alias eupdate="sudo emerge -a --update --deep --quiet @world"
alias herbc="herbstclient"
alias v="vim"
alias sv="sudo vim"
alias n="nnn"
alias ncm="ncmpcpp"
alias neo="neofetch"
alias ka="killall"
alias g="git"
alias tdae="transmission-daemon -t -u cabe -v singer -p 9091 -a "127.0.0.1""
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias tarx="tar -xvpf"
alias packlist="cat /var/lib/portage/world"
alias duse="sudo ncdu -rx /"

# Color
alias ls='ls -hN --color=auto --group-directories-first'

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x --audio-format mp3" # Download only audio


function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}

