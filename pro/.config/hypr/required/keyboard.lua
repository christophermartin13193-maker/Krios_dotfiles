-- Tous les éléments liés aux claviers seront rangés ici

--------------------
------ INPUTS ------
--------------------

hl.config({
	input = {
		kb_layout = "fr",
		numlock_by_default = true,
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,
		sensitivity = 0,
	},
})

---------------------
---- KEYBINDINGS ----
---------------------

-- local variables
local mainMod = "SUPER"
local terminal = "alacritty"
local inventory = "rofi -show run"
local shot_monitor = "hyprshot -o ~/media/img/screenshot -m output -m active"
local shot_window = "hyprshot -o ~/media/img/screenshot -m window -m active"
local menu = "dolphin"


-- APPLICATIONS
-- terminal
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
-- inventory
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(inventory))
-- menu
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(menu))
-- monitor shot
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(shot_monitor), { release = true })
-- window shot
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(shot_window), { long_press = true })

-- WINDOWS
-- focus
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
-- move with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
-- resize with mouse
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
-- fullscreen
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))
-- float
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
-- pseudo
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- close
local closeWindowBind = hl.bind(mainMod .. " + SHIFT + A", hl.dsp.window.close())

-- WORKSPACES
for i = 1, 10 do
	local key = "code:" .. (i + 9)
	-- focus
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	-- move
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
-- scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
-- hidden focus
hl.bind(mainMod .. " + H", hl.dsp.workspace.toggle_special("hidden"))
-- hidden move
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ workspace = "special:hidden" }))


-- SOUND
-- up
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
-- down
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
-- toggle
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { repeating = true })
-- toggle mic
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { repeating = true })

-- PLAYER CONTROL
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

-- HYPRLAND
-- shutdown
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"), { long_press = true })

