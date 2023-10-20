vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- move selection all together up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- move next line at the end of current line and keep cursor at beginning
vim.keymap.set('n', 'J', 'mzJ`z')
-- keep cursor in middle line, when using C-d and C-u
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- keep cursor in middle line, when doing find in search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
-- when pasting something, keep the pasted text in clipboard, instead of the deleted or overwritten text
vim.keymap.set('x', '<leader>p', '"_dP')
-- yank to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
-- deleting and voiding register
vim.keymap.set({'n', 'v'}, '<leader>d', [["_d]])
-- disable Q
vim.keymap.set('n', 'Q', '<nop>')
-- format file
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
-- quick navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
-- replace current word (current word = selected or cursor)
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- source vim lua file
vim.keymap.set('n', '<leader><leader>', function() vim.cmd('so') end)
