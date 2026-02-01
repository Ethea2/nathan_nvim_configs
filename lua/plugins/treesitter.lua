return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local status_ok, configs = pcall(require, "nvim-treesitter.configs")
		if not status_ok then
			return
		end
		configs.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true }, -- fixed typo: "autotage" -> "autotag"
			ensure_installed = {
				"lua",
				"tsx",
				"typescript",
				"javascript",
				"go",
			},
			auto_install = false,
		})
	end,
}
