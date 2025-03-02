local key = vim.keymap;
local n ='n';
local v = 'v';
local i = 'i';
local vb = 'x';
local t = 't';
local c = 'c';
local ops = {noremap = true, silent = true}
-- .set('mode', 'new-key', 'function key')
-- arrows
key.set(n, 'k','j', ops)
key.set(n, 'i','k', ops)
key.set(n, 'j','h', ops)
key.set(v, 'k','j', ops)
key.set(v, 'i','k', ops)
key.set(v, 'j','h', ops)
	
key.set(n, '<C-l>','<C-f>', ops) -- should scroll forward one page - so like 30 lines
key.set(n, '<C-j>','<C-b>', ops) -- should scroll backwards one page - so like 30 lines
key.set(n, '<C-i>','<C-u>', ops) -- should scroll up half page - so like 15 lines
key.set(n, '<C-k>','<C-d>', ops) -- should scroll down half page - so like 15 lines
-- insert mode
key.set(n,'a','i', ops) -- a is left of cursor
key.set(n, 'A', 'I', ops) -- A is left of line
key.set(n, 's','a', ops) -- s is right of cursor
key.set(n, 'S','A', ops) -- S is right of line

 key.set(v,'a','i', ops) -- a is left of cursor
key.set(v, 'A', 'I', ops) -- A is left of line
key.set(v, 's','a', ops) -- s is right of cursor
key.set(v, 'S','A', ops) -- S is right of line

key.set(vb,'a','i', ops) -- a is left of cursor
key.set(vb, 'A', 'I', ops) -- A is left of line
key.set(vb, 's','a', ops) -- s is right of cursor
key.set(vb, 'S','A', ops) -- S is right of line

-- copy/paste
key.set(n, 'p','P', ops) -- paste before cursor
key.set(n,'P', 'p', ops) -- paste after cursor
-- moving words
key.set(n,'w', 'b', ops) -- move back one word, first char
-- key.set(n,'W', '') -- move back one word, end char
key.set(n,'e', 'w', ops) -- move forward one word, first char
key.set(n,'E', 'e', ops) -- move forward one word, end char
key.set(n, 'q', '^', ops) -- q is move to first char of line
key.set(n, 'Q', '0', ops) -- Q is move to beg of line
key.set(n, 'r', '$', ops) -- r is move to end of line
key.set(n, 'U', '<C-r>', ops) -- U is for redo 

key.set(v, 'q', '^', ops) -- q is move to first char of line
key.set(v, 'Q', '0', ops) -- Q is move to beg of line
key.set(v, 'r', '$', ops) -- r is move to end of line
key.set(v, 'U', '<C-r>', ops) -- U is for redo 
-- misc
key.set('i', '<S-space>', '<Esc>', ops)
key.set('i', '<S-space>', '<Esc>', ops)
key.set(v, '<S-space>', '<Esc>', ops)
-- need to setup motions to fix line endings - like d$ -> dr or whatever
-- also need to fix things liek window management, and pasting on current line vs next line?
-- key.set(n, '<leader>p', '"0p',)


-- DEFAULTS - NORMAL MODE 
-- gg - go to start of file
-- G - got to end of file
-- / - search forward for pattern
-- ? - search backward for pattern
-- 

-- NORMAL MODE COMMANDS
-- :[number] - go to line [number]
-- :![command] - :!ls
-- :e [filename] - open a filename
-- :split - spilts window horizontally
-- :vsplit - splits window vertically
-- :vsplit - splits window vertically
-- :checkhealth - shows detailed stuff about nvim, like node js, clipbaord, and other health data stuff
