set -o vi

alias l="ls"
alias sl="ls"
alias s="ls"

alias pself="ps -Ao flags,state,user,pid,ppid,%cpu,pri,nice,paddr,rss,wchan,start,tty,time,command | sort -n -k4"
alias gitk="gitk 2> /dev/null"

export EDITOR="vim"
