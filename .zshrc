source ~/.zshrc-global

if [[ "$INSIDE_EMACS" != "" ]]
then
    export EDITOR=/usr/bin/emacsclient
    alias n='$EDITOR'
fi

#ECLIPSE_XMX=768m

sv(){
    act="$1"; shift
    for i in $@
    do
        sudo /etc/init.d/"$i" "$act"
    done
}

alias blkid='sudo /sbin/blkid'
alias ssu='sudo su'
alias s='sudo su'
alias lg='sudo tail -f /var/log/everything/current'
alias efl='tail -f /var/log/emerge-fetch.log'

alias sn='ssh neure'

#source /mnt/dev/bash/chat.sh
#nick='vozhyk_'
#chatfile='/home/vozhyk/read'
## pounyja teczki
PS1='%D{%F %T} %B%F{green}%n@%m%k %B%F{blue}%~ %# %b%f%k'

[[ -s "/home/vozhyk/.gvm/scripts/gvm" ]] && source "/home/vozhyk/.gvm/scripts/gvm"
export GOPATH="$GOPATH:/home/vozhyk/dev/go"
