-- Keymaps

-- File Operations
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>v', '<cmd>vnew<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>split<cr>')
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>')

-- UI
vim.keymap.set('n', '<leader>d', '<cmd>Dashboard<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>NeoTreeFocusToggle<cr>', { silent = true })

-- Package Management
vim.keymap.set('n', '<leader>p', '<cmd>Lazy<cr>')

-- LSP
vim.keymap.set('n', '<leader>li', '<cmd>LspInstall<cr>')
vim.keymap.set('n', '<leader>lf', '<cmd>LspZeroFormat<cr>')
