local ms = require("mason").setup()
local mlsp = require("mason-lspconfig")

mlsp.setup{
    ensure_installed = {
        "clangd",
        "gopls",
        "lua_ls",
        "pylsp",
        "rust_analyzer",
    }
}
