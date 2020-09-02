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

# TERM
TERM=screen-256color

# I don't want suggestion when I entered a wrong command
unset command_not_found_handle


# Load Alias
[ -f $HOME/.bashrc_aliases ] && . $HOME/.bashrc_aliases

# Prompt 
__prompt_command() {
   local EXIT="$?"
   local RCol='\[\e[0m\]'
   local Red='\[\e[0;31m\]'
   local Gre='\[\e[0;32m\]'

   PS1="@\u: "
   PS1+="\[\033[1;33m\]\w"
   PS1+="\[\e[94m\]\$(git_branch)\[$NO_COLOR\]"
   PS1+="\n\[$NO_COLOR\]["
   if [ $EXIT != 0 ]; then
      PS1+="${Red}$EXIT${RCol}"      # Add red if exit code non 0
   else
      PS1+="${Gre}$EXIT${RCol}"
   fi
   PS1+="\[$NO_COLOR\]] "
}

PROMPT_COMMAND=__prompt_command
PS2="\[\033[1;33m\]|> \[$NO_COLOR\]"

export PS1
export PS2

# MySQL Prompt 
MYSQL_PS1="\u [ \d ] |> "
export MYSQL_PS1


# HISTORY CONTROL
HISTTIMEFORMAT="%y/%m/%d  %T |>  "
HISTSIZE=200
HISTCONTROL="ignorespace"

# Setting bat colors to man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Path Variable
PATH=$PATH:~/homebrew/bin/:~/.myScripts/


# Extend the regular expression for my bash 
shopt -s extglob

# I changed a few ls colors 
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;33:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;33:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;33:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;33:*.bz=01;33:*.tbz=01;33:*.tbz2=01;33:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';

export LS_COLORS
