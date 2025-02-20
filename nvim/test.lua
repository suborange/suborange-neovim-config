print("testing some lua practice here");
-- comment
--[[multi
line
comment]]

vim.cmd("colorscheme vim")
foo = function() 
	print("testing colors") end
local options={
termguicolors = true, -- set term gui colors
}

local opt = vim.opt;
 -- basic editor options 
opt.number = true;
opt.tabstop = 2;
opt.shiftwidth = 2;
opt.expandtab = true; -- okay so tab stop seems to work when expandtab is false
-- formatoptions [:set formatoptions?] - remove(), append()
opt.formatoptions:remove('c') -- should disbale auto comments 
opt.formatoptions:remove('r') -- should disbale auto comments one new lines

