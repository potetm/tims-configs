set -o vi
export EDITOR="vim"
export GREP_OPTIONS="--color=auto"

alias l="ls"
alias sl="ls"
alias s="ls"

alias pself="ps -Ao flags,state,user,pid,ppid,%cpu,pri,nice,paddr,rss,wchan,start,tty,time,command | sort -n -k4"
alias gitk="gitk 2> /dev/null"

alias cdpr="cd ~/projects"
alias cdae="cd ~/projects/cicayda/analytics-engine"

alias dnsflush="sudo killall -HUP mDNSResponder"
