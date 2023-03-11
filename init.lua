-- set line numbering for all buffers
vim.wo.number = true

-- require telescope remaps
require('remap')

-- set tab spaces for different file types
vim.cmd('autocmd FileType python,rust setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab')
vim.cmd('autocmd FileType html,css,scss,sass,js,ts :setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab')
vim.cmd('autocmd FileType c :setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab')


-- Initialize Packer
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- load plugins from plugins.lua
  require('plugins')
end)


-- enable treesitter

require('nvim-treesitter.configs').setup {
  ensure_installed = {"rust", "python", "typescript"}, -- or a list of languages
  highlight = {
    enable = true, -- false will disable the whole extension
  },
  indent = {
    enable = true
    
  }
}

-- set color scheme
vim.cmd('colorscheme gruvbox')

-- set up lualine status line
require('lualine').setup {
  options = {
    theme = 'gruvbox',
    section_separators = {'', ''},
    component_separators = {'', ''},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  extensions = {}
}
-- extra setting for the status line
vim.o.laststatus = 2
