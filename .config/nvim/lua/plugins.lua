return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip", 
      "hrsh7th/cmp-nvim-lua",
      "L3MON4D3/LuaSnip",  
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')  -- Asegúrate de requerir LuaSnip

      -- Configura nvim-cmp
      cmp.setup({
        completion = {
          completeopt = 'menu,menuone,noinsert',
        },
        snippet = {
          expand = function(args)
            -- Usar luasnip para expansión de fragmentos
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Aceptar el item seleccionado
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },  -- Asegúrate de incluir 'luasnip' en las fuentes
          { name = 'nvim_lua' },
        }, {
          { name = 'buffer' },
          { name = 'path' },
        }),
      })

      -- Configura LSP para utilizar nvim-cmp
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      -- Aquí puedes agregar tus servidores LSP
      require('lspconfig')['nimls'].setup {
        capabilities = capabilities
      }
      require('lspconfig')['pylsp'].setup {
            capabilities = capabilities
      }
      require('lspconfig')['lua_ls'].setup {
            capabilities = capabilities
      }
      require('lspconfig')['pyright'].setup {
            capabilities = capabilities
      }
      require('lspconfig')['bashls'].setup {
            capabilities = capabilities
      }
      -- Html, css, js, ts
      require('lspconfig')['cssls'].setup {
            capabilities = capabilities
      }
      require('lspconfig')['html'].setup {
            capabilities = capabilities
      }
      require('lspconfig')['denols'].setup {
            capabilities = capabilities
      }
      require('lspconfig')['ts_ls'].setup {
            capabilities = capabilities
      }

    end
  }
}

