# .bashrc
alias ls='ls --color=auto'
alias nf='neofetch'
alias xq='xbps-query -Rs'

export PS1="\[\e[31;1m\][\[\e[m\]\[\e[33;1m\]\u\[\e[m\]\[\e[32;1m\]@\[\e[m\]\[\e[34;1m\]\h\[\e[m\] \[\e[35;1m\]\w\[\e[m\]\[\e[31;1m\]]\[\e[m\]\\$ "
export PATH="$PATH:$HOME/.local/bin:$HOME/.gem/bin"
export EDITOR="nvim"
export TERM="xterm-256color"
