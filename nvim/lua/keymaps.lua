local key = vim.keymap;
local n ='n';
local v = 'v';
local i = 'i';
local vb = 'x';
local t = 't';
local c = 'c';
local r = 'r';
local ops = {noremap = true, silent = true}

-- NORMAL MODE
-- .set('mode', 'new-key', 'function key')
-- arrows
key.set(n, 'k','j', ops)
key.set(n, 'i','k', ops)
key.set(n, 'j','h', ops)
-- 
key.set(n, '<Esc>', '<S-space>', ops)

-- scrolling	
key.set(n, '<S-l>','<C-f>', ops) -- should scroll forward one page - so like 30 lines
key.set(n, '<S-j>','<C-b>', ops) -- should scroll backwards one page - so like 30 lines
key.set(n, '<S-i>','<C-u>', ops) -- should scroll up half page - so like 15 lines
key.set(n, '<S-k>','<C-d>', ops) -- should scroll down half page - so like 15 lines
-- editing commands
key.set(n,'c','r', ops) 
key.set(n,'C','ce', ops) 
key.set(n,'T','c0', ops) 
key.set(n,'t','c$', ops) 
--key.set(n,'cx','rx', ops) 
--key.set(v, '<S-space>', '<Esc>', ops)

-- commands for "Insert" mode
key.set(n,'a','i', ops) -- a is left of cursor
key.set(n, 'A', 'I', ops) -- A is left of line
key.set(n, 's','a', ops) -- s is right of cursor
key.set(n, 'S','A', ops) -- S is right of line


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
key.set(n, 'dq', 'd0', ops) -- Q is move to beg of line
key.set(n, 'r', '$', ops) -- r is move to end of line
key.set(n, 'dr', 'd$', ops) -- r is move to end of line
key.set(n, 'U', '<C-r>', ops) -- U is for redo 

-- search
key.set(n, ';','%')
-- INSERT MODE 
key.set(i, '<S-space>', '<Esc>', ops)
key.set(i, '<S-space>', '<Esc>', ops)

-- VISUAL MODES
key.set(v, 'k','j', ops)
key.set(v, 'i','k', ops)
key.set(v, 'j','h', ops)
key.set(v, '<S-space>', '<Esc>', ops)
key.set(vb, '<S-space>', '<Esc>', ops)
key.set(v, '<S-l>','<C-f>', ops) -- should scroll forward one page - so like 30 lines
key.set(v, '<S-j>','<C-b>', ops) -- should scroll backwards one page - so like 30 lines
key.set(v, '<S-i>','<C-u>', ops) -- should scroll up half page - so like 15 lines
key.set(v, '<S-k>','<C-d>', ops) -- should scroll down half page - so like 15 lines
key.set(v,'a','i', ops) -- a is left of cursor
key.set(v, 'A', 'I', ops) -- A is left of line

key.set(vb, 'a', 'I', ops) -- A is left of line
key.set(vb, 's','a', ops) -- s is right of cursor
key.set(vb, 'S','A', ops) -- S is right of line
key.set(v,'c','r', ops) 
key.set(v, 'q', '^', ops) -- q is move to first char of line
key.set(v, 'Q', '0', ops) -- Q is move to beg of line
key.set(v, 'r', '$', ops) -- r is move to end of line
key.set(v, 'U', '<C-r>', ops) -- U is for redo 
-- need to setup motions to fix line endings - like d$ -> dr or whatever
-- fixed: dr, dq
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
-- :s/old/new - replaces first instance in search
-- :s/old/new/g - replaces all instances in the line.
-- STOPPED 535
