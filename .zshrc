ZSH_THEME="amuse"

# export
export GIT_EDITOR=vim

# alias
alias zshconfig="vim ~/.zshrc"


# Git Pair With
## usage: pair_with "Gabi Duarte" "gabi@gabi.com"
function work_solo {
	unset GIT_COMMITER_NAME
	unset GIT_COMMITER_EMAIL
}

function pair_with {
	export GIT_COMMITER_NAME=$1
	export GIT_COMMITER_EMAIL=$2
}
