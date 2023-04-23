local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Search for files, provide a string to look for
vim.keymap.set('n', '<leader>fs', function () 
	builtin.live_grep()
end)

-- Search for files containing visual selection, can update the string
vim.keymap.set('v', '<leader>fs', function () 
	builtin.live_grep({ default_text =  vim.getVisualSelection()})
end)

-- Search for word under curser, filter by file
vim.keymap.set('n', '<leader>fwc', builtin.grep_string)

-- Search for word, provide word, filter by file`
vim.keymap.set('n', '<leader>fw', function () 
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Search for word in visual selection, filter by file
vim.keymap.set('v', '<leader>fw', function ()
    builtin.grep_string({ search = vim.getVisualSelection() })
end)

function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end
