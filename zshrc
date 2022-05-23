# hook functions
autoload -Uz add-zsh-hook
add-zsh-hook precmd addLineBeforeUsername

# add one line before username
function addLineBeforeUsername()
{
    if [ -z "$ADD_LINE_BEFORE_USERNAME" ]; then
        ADD_LINE_BEFORE_USERNAME=1
    else
        echo ""
    fi
}

# color setting of PROMPT
name_color="%{\e[38;5;179m%}"
arrow_color="%{\e[38;5;087m%}"
color_reset="%{\e[0m%}"
PROMPT=`echo "${name_color}%n%#: %~${color_reset} 
${arrow_color}>>${color_reset} "`

# aliases
alias la='ls -a'
alias halt='shutdown -h now'
alias reboot='shutdown -r now'
alias えぃｔ='exit'

# other setting 
setopt auto_cd # omit "cd"

# Python
alias python='python3'
alias pip='pip3'

# pipenv
alias datascience='cd ~/Documents/Advanced_Data_Science_Exercise && pipenv shell'

# java
alias javacu='javac -J-Dfile.encoding=UTF-8'
alias javau='java -Dfile.encoding=UTF-8'

