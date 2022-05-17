-- g:ministatusline_disable
require('mini.sessions').setup({})
-- require('mini.bufremove').setup({})
require('mini.starter').setup({})
require('mini.surround').setup({})
require('mini.jump').setup({})
require('mini.pairs').setup({})
require('mini.trailspace').setup({})
require('mini.cursorword').setup({})
require('mini.comment').setup({})
require('mini.indentscope').setup({
	draw = { delay = 0, },
	mappings = {
		object_scope = 'ii',
		object_scope_with_border = 'ai',
		goto_top = '[i',
		goto_bottom = ']i',
	},
	options = {
		border = 'both',
		indent_at_cursor = true,
		try_as_border = false,
	},
	symbol = '╎',
})
