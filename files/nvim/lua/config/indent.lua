local highlight = {
	"CursorColumn",
	"Whitespace",
}
require("ibl").setup {
	indent = { char = "|" },
	whitespace = {
		remove_blankline_trail = true,
	},
	scope = { enabled = true, show_start = true, show_end = false, },
}
