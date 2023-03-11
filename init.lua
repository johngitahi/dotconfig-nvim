-- set line numbering for all buffers
vim.wo.number = true


-- set tab spaces for different file types
vim.cmd('autocmd FileType python,rust setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab')
vim.cmd('autocmd FileType html,css,scss,sass,js,ts :setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab')
vim.cmd('autocmd FileType c :setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab')
