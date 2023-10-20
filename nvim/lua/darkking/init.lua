require('darkking.remap')
require('darkking.set')
require('darkking.lazy')

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

local wk = require('which-key')
wk.register()
