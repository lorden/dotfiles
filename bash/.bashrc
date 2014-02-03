# Let's keep a long history
HISTSIZE=10000
HISTFILESIZE=20000

# Colors everywhere
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# some more ls aliases
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

function git-title {
    local branch
    local repo
    local name
    if ! branch="`git rev-parse --abbrev-ref HEAD 2>/dev/null`"; then
        # Not a git repository
        name="${PWD}"
    else
        repo=`basename \`git rev-parse --show-toplevel\``
        name="$repo - $branch"
    fi

    echo -ne "\033]2;$name\007"
}

PS1='\e[0;37m\e[0;42m${USER}@\h \D{%Y-%m-%d} \t \w \e[30;43m$(parse_git_branch)\e[00m\n$'

export PROMPT_COMMAND="git-title"
