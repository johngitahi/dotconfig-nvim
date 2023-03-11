vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map <leader>b to open Telescope buffers picker
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })

-- Map <leader>f to open Telescope find_files picker
vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })

