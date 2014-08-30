if [ $(id -u) -eq 0 ];
then
    PS1='\[\e[1;36m\][\d \t \u@\h \w]\$\[\e[m\] '
else

    if [ -n "$SSH_CLIENT" ]; then text=" ssh-session"
    then
	PS1='\[\e[1;32m\]\u@\h:\w${text}$\[\e[m\] '
    else 
	PS1='\[\e[1;33m\][\d \t \u@\h \w]\$\[\e[m\] '
    fi
fi
export PS1