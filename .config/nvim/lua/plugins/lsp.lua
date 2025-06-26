return {
	"lsproule/lsps-manager",
	lazy = false,
	config = function()
		require("lsp-manager").setup{}
	end,
}
