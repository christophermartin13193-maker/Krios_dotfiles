-- Tous les utilitaires chargés au démarrage seront traîtés ici.

hl.on("hyprland.start", function ()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar -c ~/.config/waybar/bottom/config.jsonc -s ~/.config/waybar/bottom/style.css")
end)
