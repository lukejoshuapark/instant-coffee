parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PROMPT_COMMAND=__prompt_command

__prompt_command() {
	PS1="\[\e[00m\]☕ \[\e[35m\]\w \[\e[33m\]$(parse_git_branch)\[\e[00m\] "
}

source /usr/share/bash-completion/completions/git
