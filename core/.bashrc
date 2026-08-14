# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIAS
alias grep='grep --color=auto'
alias eza='eza --color=auto --icons=auto'
alias ll='eza -lA --icons --octal-permissions --group-directories-first --git'
alias z='cd'

# start starship
eval "$(starship init bash)"

# add to PATH
export PATH==$PATH:/home/chris/.cargo/bin

# FUNCTIONS
rip()
{
	if [ $# -eq 0 ]; then
		command rm
		return
	fi

	for arg in "$@"; do
		if [[ "$arg" == "/" ]] || [[ "$arg" == "$HOME" ]]; then
			echo "Erreur : Suppression de / ou de \$HOME interdite, par sécurité."
			return 1
		fi
	done

	echo "Attention, vous allez supprimer :"
	ll -d -- "$@"

	read -p "Confirmez la suppression de ces $# élément(s) ? [y/N] " -n 1 -r
	echo

	if [[ $REPLY =~ ^[yY]$ ]]; then
		command sudo rm -rf -- "$@"
		echo "Suppression effectuée."
	else
		echo "Action annulée."
	fi
}

please()
{
	sudo $(fc -ln -1)
}
