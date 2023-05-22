-- Plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- Auto-install lazy.nvim if not present
if not vim.loop.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end

vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require('lazy').setup({

  -- LSP
  require("cauldron/plug/lsp"),

  -- Treesitter
  require("cauldron/plug/treesitter"),

  -- Telescope
  require("cauldron/plug/telescope"),

  -- Harpoon
  require("cauldron/plug/harpoon"),

  -- Undotree
  require("cauldron/plug/undotree"),

  -- Theme
  require("cauldron/plug/theme"),

})
