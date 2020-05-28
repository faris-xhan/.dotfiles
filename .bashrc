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
#PS1+="\[\033[1;30m\]$?" 
PS1+="\[\e[94m\]$?"
PS1+="\[$NO_COLOR\]] "
PS1+="\[\033[1;32m\]-> \[$NO_COLOR\]"

# Alias
alias ls="ls -pF --color=always"
alias pip="pip3"
alias grep="grep -i --color=always"
alias diff="diff --color=always"
alias python="python3"
alias dotbash="vim ~/.bashrc"
alias refresh="source ~/.bashrc"


# PATH 
export PATH=$PATH:/home/faris/homebrew/bin
