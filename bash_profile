#if [ $(id -u) -eq 0 ];
#    then
#        PS1='\[\e[1;36m\][\d \t \u@\h \w]\$\[\e[m\] '
#    else
#
#    if [ -n "$SSH_CLIENT" ]; 
#        then 
#        text=" ssh-session"
#	    PS1='\[\e[1;32m\]\u@\h:\w${text}$\[\e[m\] '
#    else 
#	    PS1='\[\e[1;33m\][\d \t \u@\h \w]\$\[\e[m\] '
#    fi

if [[ ${EUID} == 0 ]] ; 
then
    sq_color="\[\033[0;31m\]"
else
    sq_color="\[\033[0;34m\]"
fi

PS1="$sq_color\342\224\200\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[01;37m\]\342\234\227$sq_color]\342\224\200\")[\[\033[01;37m\]\t$sq_color]\342\224\200[\[\033[01;37m\]\u@\h$sq_color]\342\224\200\342\224\200> \[\033[01;37m\]\W$sq_color $ \[\033[01;37m\]>>\\[\\033[0m\\] "

            unset sq_color
#fi
export PS1
