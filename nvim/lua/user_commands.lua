local vm = vim.api;
vm.nvim_create_user_command('CommentLine', function()
  local filetype = vim.bo.filetype
  local comment_string = {
    lua = '--',
    python ='#', 
    javascript = '//',
    typescript = '//',
    c = '//', 
    cpp = '//', 
    sh = '#',
    vim = '"',
    sql = '--',
    html = '<!-- %s -->',
    css = '/* $s */',
  }

  local line = vm.nvim_get_current_line()
  local comment = comment_string[filetype] -- can do an or here: or '#'

  -- handling HTML and CSS ::: :
  -- TODO

  if line:match('^%s*'..comment) then 
    vm.nvim_set_current_line(line:gsub('^%s*'..comment, ''))
  else
    vm.nvim_set_current_line(comment..' '..line)
  end
end, {})

