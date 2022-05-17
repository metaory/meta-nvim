require("which-key").setup {}

local wk = require("which-key")
local vim = vim

vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers)

wk.register({
	["p"] = {
		name = "+Packer",
		s = { ":PackerSync<CR>", "Sync" },
		c = { ":PackerCompile<CR>", "Compile" },
	},
	["S"] = {
		name = "+Sessions",
		s = { ":lua MiniSessions.write('nvim')", "save" },
		l = { ":lua MiniSessions.read('nvim')", "load" },
	},
	["q"] = {
		name = "+Quit",
		w = { ":wq<cr>", "quit +s" },
		q = { ":qa<cr>", "quit" },
		Q = { ":qa!<cr>", "quit +f" },
	},
	["w"] = {
		name = "+Wiki",
		w = { "<cmd>VimwikiIndex<cr>", "Wiki Index" },
		d = { "<cmd>VimwikiDiaryIndex<cr>", "Diary Index" },
	},
	['f'] = {
		name = "File",
		f = { "<cmd>NvimTreeFindFileToggle<cr>", "FindFile" },
		e = { "<cmd>NvimTreeToggle<cr>", "Toggle" },
		r = { "<cmd>Telescope oldfiles<cr>", "OldFiles" },
		o = { "<cmd>NvimTreeFindFileToggle<cr>", "Open" },
		s = { "<cmd>:w<cr>", "Save" },
	},
	["F"] = {
		name = "+FType",
		v = { "<cmd>:setf vim<cr>", "vim" },
		b = { "<cmd>:setf bash<cr>", "bash" },
		s = { "<cmd>:setf sh<cr>", "sh" },
		z = { "<cmd>:setf zsh<cr>", "zsh" },
		l = { "<cmd>:setf lua<cr>", "lua" },
		m = { "<cmd>:setf markdown<cr>", "markdown" },
	},
	["b"] = {
		name = "+Buffers",
		a = { "<cmd>BDelete all<cr>", "BDel all" },
		h = { "<cmd>BDelete hidden<cr>", "BDel hidden" },
		o = { "<cmd>BDelete other<cr>", "BDel other" },
		e = { "<cmd>BDelete other<cr>", "BDel other" },
		b = { "<cmd>BDelete this<cr>", "BDel this" },
	},
	["T"] = {
		name = "+Tabs",
		t = { "<cmd>:TablineTabNew<cr>", "TabNew" },
		c = { "<cmd>:TablineBuffersClearBind<cr>", "ClearBind" },
		s = { "<cmd>:TablineToggleShowAllBuffers<cr>", "ToggleShowAll" },
	},
	["t"] = {
		name = "+Toggles",
		c = { "<cmd>:ColorizerReloadAllBuffers <cr>", "ColorizerReload" },
		s = { "<cmd>:set spell!<cr>", "Spell" },
		[' '] = { "<cmd>:set list!<cr>", "whitespace" },
		d = { "<cmd>:lua MiniTrailspace.trim()<cr>", "Delete whitespace" },
		l = { "<cmd>:set colorcolumn=<cr>", "no ColorColumn" },
		i = { "<cmd>:set ic!<cr>", "Case" },
		f = { "<cmd>:set foldmethod=indent<cr>", "FoldMethod" },
		w = { "<cmd>:setlocal shiftwidth=2<cr>", "ShiftWidth" },
		t = { "<cmd>:Twilight<cr>", "Twilight" },
		p = { "<cmd>:TSPlaygroundToggle<cr>", "TS Playground" },
		h = { "<cmd>:TSHighlightCapturesUnderCursor<cr>", "TS Highlight" },
		q = { "<cmd>:lua vim.diagnostic.setloclist()<cr>", "SetLocList" },
	},
	["D"] = {
		name = "+Debug",
		d = {
			name = "+Dumps",
			m = { "<cmd>Bufferize map<cr>:set ic<cr>:setf vim<cr>", "maps" },
			h = { "<cmd>Bufferize hi<cr>:set ic<cr>:setf vim<cr>", "highlights" },
		}
	},
	["v"] = {
		name = "LSP_Nav",
		d = { "<cmd>:lua vim.lsp.buf.definition()<cr>", "Definition" },
		D = { "<cmd>:lua vim.lsp.buf.declaration()<cr>", "Declaration" },
		r = { "<cmd>:lua vim.lsp.buf.references()<cr>", "References" },
		R = { "<cmd>:lua vim.lsp.buf.rename()<cr>", "Rename" },
		v = { "<cmd>:lua vim.lsp.buf.hover()<cr>", "Hover" },
		f = { "<cmd>:lua vim.lsp.buf.format()<cr>", "Format" },
	},

	["c"] = {
		name = "Nav",
		d = { "<cmd>:lua require'telescope'.extensions.zoxide.list{}<CR>", "Z list" },
	},
	["s"] = {
		name = "Search",
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		B = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		F = { "<cmd>Telescope find_files<cr>", "Find File" },
		h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		p = { "<cmd>Telescope projects<cr>", "Projects" },
		P = { "<cmd>Telescope packer<cr>", "Packer" },
		t = { "<cmd>Telescope live_grep<cr>", "Text" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		c = { "<cmd>Telescope commands<cr>", "Commands" },
		v = { "<cmd>Cheatsheet<cr>", "Cheatsheet" },
		s = { "<cmd>Telescope symbols<cr>", "Symbols" },
		S = { "<cmd>ThesaurusQueryReplaceCurrentWord<cr>", "Thesaurus" },
		o = { "<cmd>Telescope vim_options<cr>", "vim_options" },
		H = { "<cmd>Telescope highlights<cr>", "Highlights" },
		f = { "<cmd>Telescope oldfiles<cr>", "Old File" },
		m = { "<cmd>Telescope marks<cr>", "Marks" },
		n = { "<cmd>Telescope node_modules list<cr>", "Node Modules" },
		r = { "<cmd>Telescope registers<cr>", "Registers" },
	},
	["x"] = {
		name = "+Xorg",
		a = {
			name        = "+Align",
			["<space>"] = { [[<CMD>Tabularize<CR>]], "repeat" },
			["/"]       = { [[<CMD>Tabularize /<CR>]], "slash" },
			["["]       = { [[<CMD>Tabularize /[<CR>]], "open [" },
			["]"]       = { [[<CMD>Tabularize /]<CR>]], "close ]" },
			["("]       = { [[<CMD>Tabularize /(<CR>]], "close (" },
			[")"]       = { [[<CMD>Tabularize /)<CR>]], "close )" },
			["{"]       = { [[<CMD>Tabularize /{<CR>]], "open {" },
			["}"]       = { [[<CMD>Tabularize /}<CR>]], "close {" },
			["-"]       = { [[<CMD>Tabularize /-<CR>]], "dash" },
			["."]       = { [[<CMD>Tabularize /.<CR>]], "dot" },
			[","]       = { [[<CMD>Tabularize /,<CR>]], "comma" },
			[";"]       = { [[<CMD>Tabularize /;<CR>]], "semi" },
			[":"]       = { [[<CMD>Tabularize /:<CR>]], "colon" },
			["|"]       = { [[<CMD>Tabularize /|<CR>]], "pipe" },
			["'"]       = { [[<CMD>Tabularize /'<CR>]], "quote" },
			["\""]      = { [[<CMD>Tabularize /"<CR>]], "doublequote" },
			["="]       = { [[<CMD>Tabularize /=<CR>]], "equal" },
		}
	}
},
	{ prefix = "<leader>" }
)
-- vim.keymap.set('n', '<leader>sf', function()
-- 	require('telescope.builtin').find_files { previewer = false }
-- end)
-- vim.keymap.set('n', '<leader>sb', require('telescope.builtin').current_buffer_fuzzy_find)
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags)
-- vim.keymap.set('n', '<leader>st', require('telescope.builtin').tags)
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').grep_string)
-- vim.keymap.set('n', '<leader>sp', require('telescope.builtin').live_grep)
-- vim.keymap.set('n', '<leader>so', function()
-- 	require('telescope.builtin').tags { only_current_buffer = true }
-- end)
-- vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles)
-- vim.keymap.set('n', '<leader>/', '<Plug>(comment_toggle_linewise)', { noremap = false, silent = true })
