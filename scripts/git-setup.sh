parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PROMPT_COMMAND=__prompt_command

__prompt_command() {
	local EXIT="$?"
	PS1=""

	if [ "$EXIT" -eq 0 ]; then
		PS1+="\[\e[32m\]✔"
	else
		PS1+="\[\e[31m\]${EXIT}"
	fi

	PS1+=" \[\e[35m\]\w \[\e[33m\]$(parse_git_branch)\[\e[00m\] $ "
}

source /usr/share/bash-completion/completions/git
