local set = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>l", function()
	local diagnostics = vim.diagnostic.get(0) -- current buffer
	local has_errors = false
	for _, diag in ipairs(diagnostics) do
		if diag.severity == vim.diagnostic.severity.ERROR then
			has_errors = true
			break
		end
	end

	vim.diagnostic.open_float({
		scope = "buffer",
		severity = has_errors and vim.diagnostic.severity.ERROR or nil,
	})
end, { desc = "Show buffer diagnostics (errors first)" })

set("n", "<C-l>", "<C-w>l")
set("n", "<C-j>", "<C-w>j")
set("n", "<C-h>", "<C-w>h")
set("n", "<C-k>", "<C-w>k")
