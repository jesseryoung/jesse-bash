shopt -s histappend

export PS1='\[\033[0;32m\]\u@\h:\[\033[36m\]\W\[\033[0m\] \$ '

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -lah --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Execute custom machine alias file
if [ -a ~/.alias ]; then
    . ~/.alias
fi



alias lessl='less `ls -l | head -1`'
alias catl='less `ls -l | head -1`'
alias taill='less `ls -l | head -1`'

export PATH=$PATH:~/bin

