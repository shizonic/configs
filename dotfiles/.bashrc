<<<<<<< HEAD
echo -e "\x1B]2;$(whoami)@$(uname -n)\x07"; # set gnometerminal title

=======
>>>>>>> 9bfef90b89b7df6fd8da5b26a7ca63790dab6015
[ -f /etc/profile ] && . /etc/profile
[ -z "$PS1" ] && return
PATH=$PATH:$HOME/bin:$HOME/bin/wine

echo -e "\x1B]2;$(whoami)@$(uname -n)\x07"; # set gnometerminal title
archey3
export EDITOR=vim
export VISUAL=vim
set -o vi
PS1='[\u@\h \W]\$ '

# make multiple shells share the same history file
shopt -s histappend
PROMPT_COMMAND='history -a'
<<<<<<< HEAD
export HISTCONTROL=erasedups
export HISTSIZE=1000
=======
export HISTCONTROL=ignoreboth
export HISTSIZE=100000
>>>>>>> 9bfef90b89b7df6fd8da5b26a7ca63790dab6015

alias pacman="pacman-color"
alias aur="aurploader -r -l ~/.aurploader"
alias bb="sudo bleachbit --delete system.cache system.localizations system.trash system.tmp"
alias pp="sudo pacman-color -Syu"
alias cc="sudo cacheclean 2"
alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias ma="cd /home/stuff/my_pkgbuild_files"
alias ll="ls -lh"
alias la="ls -lha"
alias rm="rm -i"
alias mv="mv -i"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# torque cluster stuff
alias qs="qstat -n"
alias n="pbsnodes"
alias 0q="sudo qmgr -c \"set server next_job_number = 0 \""

alias memrss='while read command percent rss; do if [[ "${command}" != "COMMAND" ]]; then rss="$(bc <<< "scale=2;${rss}/1024")"; fi; printf "%-26s%-8s%s\n" "${command}" "${percent}" "${rss}"; done < <(ps -A --sort -rss -o comm,pmem,rss | head -n 20)'
<<<<<<< HEAD

alias pg='echo "USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND" && ps aux | grep --color=auto'
alias pm='echo "USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND" && ps aux | sort -rnk 6 | head -n 10'
=======
alias pmem="ps -A --sort -rss -o comm,pmem | head -n 11"
alias pg='echo "USER PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND" && ps aux | grep --color=auto'
>>>>>>> 9bfef90b89b7df6fd8da5b26a7ca63790dab6015

alias hddtemp="sudo hddtemp"
alias nets="sudo netstat -nlpt"
alias nets2="sudo lsof -i"

start() {
	sudo rc.d start $1
}

restart() {
	sudo rc.d restart $1
}

stop() {
	sudo rc.d stop $1
}

bi () {
	cp -a $1 /dev/shm
	cd /dev/shm/$1
	here=$(pwd)
	echo you are here $here
}

x () {
	if [ -f $1 ] ; then
		case $1 in
			*.lrz) lrztar -d $1 && cd $(basename "$1" .lrz) ;;
			*.tar.bz2) tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
			*.tar.gz) tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
			*.tar.xz) tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
			*.bz2) bunzip2 $1 && cd $(basename "$1" /bz2) ;;
			*.rar) unrar x $1 && cd $(basename "$1" .rar) ;;
			*.gz) gunzip $1 && cd $(basename "$1" .gz) ;;
			*.tar) tar xvf $1 && cd $(basename "$1" .tar) ;;
			*.tbz2) tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
			*.tgz) tar xvzf $1 && cd $(basename "$1" .tgz) ;;
			*.zip) unzip $1 && cd $(basename "$1" .zip) ;;
			*.Z) uncompress $1 && cd $(basename "$1" .Z) ;;
			*.7z) 7z x $1 && cd $(basename "$1" .7z) ;;
			*) echo "don't know how to extract '$1'..." ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}

fix() {
  if [ -d $1 ]; then
		find $1 -type d -exec chmod 755 {} \;
    find $1 -type f -exec chmod 644 {} \;
  else
		echo "$1 is not a directory."
	fi
}
