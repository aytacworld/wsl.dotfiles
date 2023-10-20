-- Install Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Installing other plugins using PluginManager
return require("lazy").setup({
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  { 'theprimeagen/harpoon' },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },
  --   "folke/which-key.nvim",
  --   "folke/neodev.nvim",
}, {})
