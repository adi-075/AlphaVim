-- Keymaps
-- File Operations
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>v', '<cmd>vnew<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>')

-- UI
vim.keymap.set('n', '<leader>d', '<cmd>Dashboard<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>NeoTreeFocusToggle<cr>', { silent = true })
vim.keymap.set('n', '<leader>f', '<cmd>NeoTreeFloatToggle<cr>', { silent = true })


-- Package Management
vim.keymap.set('n', '<leader>p', '<cmd>Lazy<cr>')

-- LSP
vim.keymap.set('n', '<leader>li', '<cmd>LspInstall<cr>')
--vim.keymap.set('n', '<leader>lf', '<cmd>LspZeroFormat<cr>')

-- Telescope 
vim.keymap.set('n', '<leader>t', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>c', '<cmd>Telescope colorscheme<cr>')
vim.keymap.set('n', '<leader>td', '<cmd>Telescope live_grep<cr>')

--Bufferline
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')
