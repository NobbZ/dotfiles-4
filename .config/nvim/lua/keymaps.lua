-- Misc
vim.keymap.set({ 'n', 'i' }, '<C-a>', '<Esc>ggVG', { desc = 'Visually Highlight [A]ll' })
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>z', function()
    vim.cmd('Neotree close')
    vim.cmd('Trouble todo close')
end, { desc = '[Z]en Mode' })
vim.keymap.set({ 'i', 'c' }, '<C-v>', '<C-r>+')

-- Undo/Redo
vim.keymap.set('n', 'U', ':redo<cr>')
vim.keymap.set('i', '<C-z>', ':undo<cr>')

-- Window Navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the down window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the up window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

-- Window resizing
local resize = 2
vim.keymap.set({ 'n', 't' }, '<C-Left>', string.format(':vertical resize -%d<CR>', resize), { desc = 'Resize Left' })
vim.keymap.set({ 'n', 't' }, '<C-Up>', string.format(':resize -%d<CR>', resize), { desc = 'Resize Up' })
vim.keymap.set({ 'n', 't' }, '<C-Down>', string.format(':resize +%d<CR>', resize), { desc = 'Resize Down' })
vim.keymap.set({ 'n', 't' }, '<C-Right>', string.format(':vertical resize +%d<CR>', resize), { desc = 'Resize Right' })

-- Keep selection after < and >
vim.keymap.set('v', '<', '<gv', {})
vim.keymap.set('v', '>', '>gv', {})

-- TODO: Add refactoring keys like <leader>iv for introduce variable, extract method, introduce constant etc
