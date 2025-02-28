if [[ "$INSIDE_EMACS" != "" ]]
then
    export EDITOR=/usr/bin/emacsclient
    alias n='$EDITOR'
fi

#ECLIPSE_XMX=768m

alias sv='sudo systemctl'

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

ssh-add -L &>/dev/null || ssh-add
