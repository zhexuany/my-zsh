alias sshi='ssh -i ~/.ssh/idc.pem'
alias em='emacsclient -a="" -ct "$@"'
alias find=gfind
alias ls=gls
alias mysqlr='mysql -u root'
alias tisqlE='mysqlr -h 127.0.0.1 -P 4000 -e "$@"'
alias tisql='mysqlr -h 127.0.0.1 -P 4000'
alias tispark='$SPARK_HOME/bin/spark-shell'
alias gsd='git stash drop'
