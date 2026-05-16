require("config.lazy")
require("config.settings")
require("config.autocmds")
require("config.mappings")

vim.lsp.enable({
	"luals",
	"pyright",
	"clangd",
	"rust-analyzer",
})
