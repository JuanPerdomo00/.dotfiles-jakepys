return {
	"pylsp",
	config = function(lspconfig)
		lspconfig.pylsp.setup{
			settings = {
				pylsp = {
					plugins = {
						pycodestyle = {
							ignore = { 'W391' },
							maxLineLength = 100
						}
					}
				}
			}
		}
	end

}
