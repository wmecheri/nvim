return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require'lspconfig'

        -- Setup nvim-cmp.
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Setup Pyright (Python LSP)
        lspconfig.pyright.setup {
            capabilities = capabilities,
        }
    end
}

