-- init.lua requirements
-- 
require 'options'
require 'keymaps'
require 'plugins'

vim.cmd("colorscheme koehler")

vim.cmd[[
augroup FormatOptions
autocmd!
autocmd FileType * setlocal formatoptions -=c
autocmd FileType * setlocal formatoptions -=r
augroup END
]]
foo = function() 
	print("testing colors") end



