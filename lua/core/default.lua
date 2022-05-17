local vim = vim

vim.o.clipboard = 'unnamed'

vim.o.foldmethod = 'indent'
vim.o.foldenable = false
vim.o.breakindent = true

vim.o.tabstop = 4
vim.o.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.listchars='tab:>-,trail:~,extends:>,precedes:<'
vim.cmd [[ let &colorcolumn="80,".join(range(119,999),",") ]]

vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.cursorline = true
vim.o.cursorcolumn = true

vim.wo.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'

vim.opt.undofile = true

vim.o.ignorecase = false
vim.o.smartcase = true

vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.o.termguicolors = true

vim.o.laststatus = 3

vim.o.completeopt = 'menuone,noselect'
-- vim.cmd [[set laststatus=3]]
-- vim.cmd [[set scrolloff=0]]
-- vim.cmd [[set sidescrolloff=0]]
-- vim.cmd [[set listchars=tab:>-,trail:~,extends:>,precedes:<]]
-- vim.cmd [[colorscheme palenight]]
-- vim.cmd [[colorscheme tokyodark]]

-- Set completeopt to have a better completion experience
