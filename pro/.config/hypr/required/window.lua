-- Je rangerai ici, tous les éléments liés aux fenêtres

local gap_extern = 15
local border_pix = 2
local gap_calcule = gap_extern - border_pix

hl.config({
	general = {
		gaps_in     = 5,
		gaps_out    = gap_calcule,
		border_size = border_pix,

		col = {
			active_border   = { colors = { "rgba(e447ccee)", "rgba(865ceeee)"}, angle = 90 },
			inactive_border = "rgba(4, 2, 13, 0.6)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 15,
            render_power = 2,
            color        = "rgba(8, 12, 30, 0.36)",
        },

        blur = {
            enabled  = true,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Special rules

hl.workspace_rule({
	workspace   = "f[1]",
	gaps_in     = 0,
	gaps_out    = gap_extern,
})

hl.workspace_rule({
	workspace = "w[tv1]",
	gaps_in   = 0,
	gaps_out  = gap_extern,
})

hl.window_rule({
	name = "no-border-wtv1",
	match = { float = false, workspace = "w[tv1]" },
	border_size = 0,
})

hl.window_rule({
	name = "no-border-f1",
	match = { float = false, workspace = "f[1]" },
	border_size = 0,
})
