local keymap = vim.keymap

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf, silent = true }

		opts.desc = "Check line diagnostics"
		keymap.set("n", "P", vim.diagnostic.open_float, opts)

		opts.desc = "Show docs"
		keymap.set("n", "K", vim.lsp.buf.hover, opts)

		opts.desc = "Restarts lsp server"
		keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
	end,
})
