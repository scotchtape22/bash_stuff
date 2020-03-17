alias lal='pwd;ls -alh'
alias md='mkdir'
alias whichdir='ls */* | grep'
alias addnote='vi /etc/server_notes.txt'
alias sort_ip="sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4"
alias breath='clear;hostname;whoami;pwd;ls -alh'

quick_backup () {
   cp $1 ~/tmp_backups/$1.bk
}


quick_restore () {
   cp ~/tmp_backups/$1.bk ./$1
}

deploy_script () {
   cp $1 ~/tmp_backups/$1.bk;ln -s $1 /usr/bin/$1
}
