local ms = require('mason').setup()
local mlsp = require('mason-lspconfig')
local lsp = require('lsp-zero')

mlsp.setup{
    ensure_installed = {
        'clangd',
        'gopls',
        'lua_ls',
        'pylsp',
        'rust_analyzer',
    },
    handlers = {
        lsp.default_setup,
    }
}
