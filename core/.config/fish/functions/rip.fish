function rip
	# si aucun argument n'est fourni
	if test (count $argv) -eq 0
		command rm
		return
	end

	# vérification des chemins interdits
	for arg in $argv
		if test "$arg" = "/" -o "$arg" = "$HOME"
			echo "Erreur : Suppression de / ou de \$HOME interdite, par sécurité."
			return 1
		end
	end

	echo "Attention, vous allez supprimer :"
	ll -d -- $argv
	echo

	# demande de confirmation
	read -ln 1 -P "Confirmez la suppression de $(count argv) élément(s) ? [y/N] " reply

	# selon le choix
	if string match -qi 'y' -- "$reply"
		command sudo rm -rf -- $argv
		echo "Suppression effectuée."
	else
		echo "Action annulée."
	end
end
