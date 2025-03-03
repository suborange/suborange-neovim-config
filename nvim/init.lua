-- init.lua requirements
-- 
require('options')
require('keymaps')
require('plugins')
--require('config.lazy')
vim.cmd("colorscheme koehler")
vim.g.mapleader = " "
vim.g.maplocalleader = " " 
vim.cmd[[
augroup FormatOptions
autocmd!
autocmd FileType * setlocal formatoptions -=c
autocmd FileType * setlocal formatoptions -=r
augroup END
]]

vim.api.nvim_create_user_command('S', 'write', {force = true})
--[[ function _cmd.saveFile()
  vim.cmd('write')
  print('File saved')
end

vim.api.nvim_create_user_command('Ss', function()
  _cmd.saveFile()
end, {})
]]

foo = function() 
	print("testing colors") end

-- commands
-- :checkhealth

