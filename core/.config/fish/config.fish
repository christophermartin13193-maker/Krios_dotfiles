if status is-interactive
	# ALIAS
	alias grep='grep --color=auto'	
	alias eza='eza --color=auto --icons=auto'
	alias ll='eza -lA --icons --octal-permissions --group-directories-first --git'
	alias z='cd'

	# start starship
	starship init fish | source

	# VARIABLES
	set fish_greeting ""
end
