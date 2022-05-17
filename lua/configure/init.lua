require('configure.telescope')
require('configure.treesitter')
require('configure.lsp')
require('configure.cmp')
require('configure.lualine')
require('configure.whichkey')
require('configure.tabline')
require('configure.specs')
require('configure.filetree')
require('configure.mini')
require('configure.notify')
require('configure.scroll')

-- require'Comment'.setup()
require "fidget".setup()

-- require('indent_blankline').setup { char = '┊', show_trailing_blankline_indent = false, }

require('gitsigns').setup {
	signs = {
		add = { text = '+' },
		change = { text = '~' },
		delete = { text = '_' },
		topdelete = { text = '‾' },
		changedelete = { text = '~' },
	},
}
-- require("nvim-treesitter.configs").setup {
-- 	highlight = {},
-- 	rainbow = { enable = true, extended_mode = true, max_file_lines = 3000, }
-- }

require 'colorizer'.setup(
	{ '*'; },
	{
	names    = true;
	RGB      = true;
	RRGGBB   = true;
	RRGGBBAA = true;
	rgb_fn   = true;
	hsl_fn   = true;
	css      = true;
	css_fn   = true;
})

require('Navigator').setup()

require('close_buffers').setup({
	filetype_ignore = {}, -- Filetype to ignore when running deletions
	file_glob_ignore = {}, -- File name glob pattern to ignore when running deletions (e.g. '*.md')
	file_regex_ignore = {}, -- File name regex pattern to ignore when running deletions (e.g. '.*[.]md')
	preserve_window_layout = { 'this', 'nameless' }, -- Types of deletion that should preserve the window layout
	next_buffer_cmd = nil, -- Custom function to retrieve the next buffer when preserving window layout
})

vim.g.VM_leader = '\\'
vim.g.VM_theme = 'neon'
