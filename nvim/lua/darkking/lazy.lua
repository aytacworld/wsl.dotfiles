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
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'folke/tokyonight.nvim', name = 'tokyonight' },
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  { 'theprimeagen/harpoon', branch = 'harpoon2', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {'folke/which-key.nvim'},
  {'tpope/vim-commentary'},
})
