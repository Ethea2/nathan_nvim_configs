return {
	"windwp/nvim-ts-autotag",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("nvim-ts-autotag").setup()
	end,
	-- Ensure Treesitter parsers are installed for the languages you need
	event = { "BufReadPre", "BufNewFile" },
}
