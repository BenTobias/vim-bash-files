export PATH=/usr/local:/usr/local/bin:/usr/bin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/share/python:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# colors #
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# perl locale #
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# general commands #
alias c='clear'
alias l.='ls -d .*'
alias ll='ls -ls'
alias h='history'
alias j='jobs -l'

# time and date shortcuts #
alias nowdate='date +"%d-%m-%Y"'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# wget #
alias wget_pdf='wget -np -l2 -r -A.pdf '

# Special cd's #
#alias cd3217='cd ~/Documents/CS3217\ Final\ Project/arc/'
alias cdpy='cd /Users/benedict/Desktop/python/google-python-exercises'

# Git Autocomplete #
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function parse_git_dirty {
  git diff --quiet || echo "*"
}

function parse_git_branch {
  git branch &> /dev/null || return 1
  echo " ($(git branch | awk '/^\*/ { print $2 }')$(parse_git_dirty))"
}


# Edit PS1 #
# Without git status
# PS1="[\@ : \u@\W]$ "
PS1='[\@ \u:\[\e[31;1m\]\W\[\e[0m\]\[\e[32;1m\]$(parse_git_branch)\[\e[0m\]]\$ '
