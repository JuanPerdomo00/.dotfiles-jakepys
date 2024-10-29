return {
{
	"oxfist/night-owl.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
    -- load the colorscheme here
    	require("night-owl").setup()
    	vim.cmd.colorscheme("night-owl")
end,
},
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
--                             , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      opts = function()
	      return require "configs.telescope"
      end
},
{
	'nvim-treesitter/nvim-treesitter',
	opts = {
		ensure_installed = {
			"bash",
			"python",
			"c",
			"cpp",
			"cmake",
			"css",
			"html",
			"javascript",
			"typescript",
			"dockerfile",
			"gitignore",
			"gitcommit",
			"git_config",
			"git_rebase",
			"json",
			"lua",
			"luadoc",
			"rust",
			"vim",
			"vimdoc",
			"yaml",
			"sql",
			"java"
		},
	},
},
{
	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate", "MasonUninstallAll" },
	opts = function()
		return require("configs.mason")
	end,
	config = function(_, opts)
		require("mason").setup(opts)
		vim.api.nvim_create_user_command("MasonInstallAll", function()
			if opts.ensure_installed and #opts.ensure_installed > 0 then
				vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
			end
		end, {})
		vim.g.mason_binaries_list = opts.ensure_installed
	end,
},
{ "williamboman/mason-lspconfig.nvim" },
{
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	config = function()
		require("configs.lspconfig")
	end,
},

{
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = function()
	  return require "configs.nvimtree"
  end,

  config = function()
    require("nvim-tree").setup {}
  end,
},

}
