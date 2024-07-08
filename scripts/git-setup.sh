parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\h \[\e[35m\]\w \[\e[33m\]\$(parse_git_branch)\[\e[00m\]$ "
source /usr/share/bash-completion/completions/git
