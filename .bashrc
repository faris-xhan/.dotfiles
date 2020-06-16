# Colors 

#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37
export NO_COLOR="\033[0;0m"

# Function to parse the git branch
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt 
PS1="\n"
PS1+="\[\033[1;31m\]\u "
PS1+="\[\033[1;37m\]at "
PS1+="\[\033[1;31m\]\h \[\033[1;37m\]in "
PS1+="\[\033[1;33m\]\w "
PS1+="\[\e[94m\]\$(git_branch)" 
PS1+="\n\[$NO_COLOR\]["
PS1+="\[\e[104m\] \A "
PS1+="\[$NO_COLOR\]] "
PS1+="\[\033[1;32m\]-> \[$NO_COLOR\]"

# Alias
alias ls="ls -pF --color=always"
alias pip="pip3"
alias grep="grep -i --color=always"
alias diff="diff --color=always"
alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias start="xdg-open"
alias python="python3 -q"
alias dotbash="vim ~/.bashrc"
alias refresh="source ~/.bashrc"

# Setting bat colors to man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# PATH 
TERM=screen-256color
export PATH=$PATH:/home/faris/homebrew/bin

# Extend the regular expression for my bash 
shopt -s extglob


