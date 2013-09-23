export PATH=/Users/diego/Documents/workspace/rabbitmq_server-3.1.5/sbin:$PATH

##
# Your previous /Users/diego/.bash_profile file was backed up as /Users/diego/.bash_profile.macports-saved_2013-09-19_at_11:39:25
##

# MacPorts Installer addition on 2013-09-19_at_11:39:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Let's keep a long history
HISTSIZE=10000
HISTFILESIZE=20000

# Colors everywhere
alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# some more ls aliases
alias ll='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# set vim as default editor
export EDITOR=vim

# vim with NERDTree enabled
alias vimt='vim -c "NERDTree"'

# git shortcuts
alias gs='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gaf='git add -f'
alias ga='git add'

# prompt cuteness
function parse_git_dirty() {
        [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
parse_git_branch() {
      git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
PS1='\e[0;37m\e[0;42m${USER}@\h \D{%Y-%m-%d} \t \w \e[30;43m$(parse_git_branch)\e[00m\n$'
