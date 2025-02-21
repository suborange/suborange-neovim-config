local key = vim.keymap;
local n ='n';
local v = 'v';
local i = 'i';
-- .set('mode', 'new-key', 'function key')
-- arrows
key.set(n, 'k','j')
key.set(n, 'i','k')
key.set(n, 'j','h')
key.set(v, 'k','j')
key.set(v, 'i','k')
key.set(v, 'j','h')
	

-- insert mode
key.set(n,'a','i') -- a is left of cursor
key.set(n, 'A', 'I') -- A is left of line
key.set(n, 's','a') -- s is right of cursor
key.set(n, 'S','A') -- S is right of line
-- moving words
key.set(n,'w', 'b') -- move back one word, first char
-- key.set(n,'W', '') -- move back one word, end char
key.set(n,'e', 'w') -- move forward one word, first char
key.set(n,'E', 'e') -- move forward one word, end char
key.set(n, 'q', '^') -- q is move to first char of line
key.set(n, 'Q', '0') -- Q is move to beg of line
key.set(n, 'r', '$') -- r is move to end of line
key.set(n, 'U', '<C-r>') -- U is for redo 
key.set(v, 'q', '^') -- q is move to first char of line
key.set(v, 'Q', '0') -- Q is move to beg of line
key.set(v, 'r', '$') -- r is move to end of line
key.set(v, 'U', '<C-r>') -- U is for redo 
-- misc
key.set('i', '<S-space>', '<Esc>')
key.set(v, '<S-space>', '<Esc>')
-- need to setup motions to fix line endings - like d$ -> dr or whatever
-- also need to fix things liek window management, and pasting on current line vs next line?
-- key.set(n, '<leader>p', '"0p',)
