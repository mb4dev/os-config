vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		-- Highlighting: pcall evita errori sui filetype senza parser
		local ok = pcall(vim.treesitter.start, args.buf)
		if not ok then
			return
		end

		-- Indentazione (sperimentale): solo se il parser è stato avviato
		vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

local rainbow_delimiters = require("rainbow-delimiters")

vim.g.rainbow_delimiters = {
	strategy = {
		[""] = rainbow_delimiters.strategy.global,
	},

	query = {
		[""] = "rainbow-delimiters",
	},
}
