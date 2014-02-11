# export PATH=/usr/local/lib/python2.7/site-packages:/usr/local/opt/ruby/bin:/usr/local/Cellar/swi-prolog/6.4.1/bin:/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/mysql/bin:/Library/Frameworks/Python.framework/Versions/3.3/bin:/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/lib/python2.7/site-packages:/usr/local/opt/ruby/bin:/usr/local/Cellar/swi-prolog/6.4.1/bin:/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLASSPATH=/Applications/eclipse/plugins/org.junit_4.10.0.v4_10_0_v20120426-0900/junit.jar:/Applications/eclipse/plugins/org.hamcrest.core_1.1.0.v20090501071000.jar:$CLASSPATH

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
alias cdocaml='cd /Users/benedict/Dropbox/Apps/IVLE Cloud Sync/CS4215\ Programming\ Language\ Implementation/Assignments/Doing'
alias cd3245='cd /Users/benedict/Dropbox/Apps/IVLE\ Cloud\ Sync/CS3245\ INFORMATION\ RETRIEVAL/CS3245\-Homework'
alias cd2020='cd /Users/benedict/Dropbox/Apps/IVLE\ Cloud\ Sync/CS2020\ Tutoring'

# Special ssh's #
alias sshcam='ssh -i cs3216-a1.pem ubuntu@a1.qxcg.net'

# Stop-Gap Measure for PyLint #
alias pylint='python /usr/local/lib/python2.7/site-packages/pylint/lint.py --disable=RP0401 --disable=RP0001 --disable=RP0002 --disable=RP0003 --disable=RP0101 --disable=RP0101 --disable=RP0701 --disable=RP0801'

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

# Git Pretty Format #
function glog {
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}


# Edit PS1 #
# Without git status
# PS1="[\@ : \u@\W]$ "
PS1='[\@ \u:\[\e[31;1m\]\W\[\e[0m\]\[\e[32;1m\]$(parse_git_branch)\[\e[0m\]]\$ '

# added by Anaconda 1.5.1 installer
#export PATH="/Users/benedict/anaconda/bin:$PATH"

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
# export PATH

# OPAM configuration
. /Users/benedict/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
