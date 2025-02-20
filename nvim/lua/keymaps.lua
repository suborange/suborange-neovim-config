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
-- misc
key.set(n, 'q', '^') -- q is move to first char of line
key.set(n, 'Q', '0') -- Q is move to beg of line
key.set(n, 'r', '$') -- r is move to end of line
key.set(n, 'U', '<C-r>') -- U is for redo 
key.set(v, 'q', '^') -- q is move to first char of line
key.set(v, 'Q', '0') -- Q is move to beg of line
key.set(v, 'r', '$') -- r is move to end of line
key.set(v, 'U', '<C-r>') -- U is for redo 
key.set('i', '<S-space>', '<Esc>')
key.set(v, '<S-space>', '<Esc>')

