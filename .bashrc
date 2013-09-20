set -o vi
export EDITOR="vim"
export GREP_OPTIONS="--color=auto --exclude-dir=.git --exclude-dir=target"

alias l="ls"
alias sl="ls"
alias s="ls"

alias pself="ps -Ao flags,state,user,pid,ppid,%cpu,pri,nice,paddr,rss,wchan,start,tty,time,command | sort -n -k4"
alias gitk="gitk 2> /dev/null"

alias cdpr="cd ~/projects"
alias cdae="cd ~/projects/cicayda/analytics-engine"
alias cdbrew="cd ~/projects/potetm/tims-brew"
alias cdconf="cd ~/projects/potetm/tims-configs"
alias cdproj="cd ~/projects"

alias dnsflush="sudo killall -HUP mDNSResponder"
