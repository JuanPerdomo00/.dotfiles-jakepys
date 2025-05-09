return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "clangd", 
                    "cmake", 
                    "cssls", 
                    "html",
                    "nimls",
                    "nim_langserver",
                    "jedi_language_server",
                    "pyright",
                    "pylsp",
                    "denols",
                    "ts_ls",
                    "harper_ls",
                    "clangd",
                    "gopls",
                    "gleam"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    }
}

