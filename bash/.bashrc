#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias x='exit'
alias c='clear'
alias paclean='sudo pacman -Rns $(pacman -Qtdq)'
alias alsi='alsi -l -u'
alias weather='curl -s wttr.in | head -7'
alias forecast='curl -s wttr.in'
alias clock='tty-clock -s -b -c -C 3'
alias ranger='ranger --choosedir=/tmp/.rangerdir; LASTDIR=`cat /tmp/.rangerdir`; cd "$LASTDIR"'
alias fractal='xaos -driver aa -aadriver curses -autopilot'
alias dots='cd ~/.dotfiles'

# shell prompt
PS1='\[\e[0;31m\]\w \[\e[0;33m\]∇\[\e[0m\] '

# bindings
bind Space:magic-space
bind '"\C-h": "cd ..\n"'
bind '"\C-g": "git add -A; git commit -v && git push"'
bind -x '"\C-o": "fc"'
bind -x '"\C-l": "ls"'

# functions
cs() { cd "$@" && ls; }

# history
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTFILESIZE=1000
export HISTSIZE=1000
export PROMPT_COMMAND='history -a'
