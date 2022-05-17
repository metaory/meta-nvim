local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local nor = {noremap = true}
local vim = vim
--Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.api.nvim_set_keymap('n', 'j', '<Plug>(faster_move_j)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'k', '<Plug>(faster_move_k)', { noremap = false, silent = true })
-- <Plug>(comment_toggle_linewise)


map('n' , "<C-h>" , "<CMD>lua require('Navigator').left()<CR>"  , opts)
map('n' , "<C-l>" , "<CMD>lua require('Navigator').right()<CR>" , opts)
map('n' , "<C-j>" , "<CMD>lua require('Navigator').down()<CR>"  , opts)
map('n' , "<C-k>" , "<CMD>lua require('Navigator').up()<CR>"    , opts)

--
-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

map('i' , "jk" , "<ESC>"  , nor)
map("i" , "<C-w>" , "<C-[>diwa", opts)
map("i" , "<C-h>" , "<BS>", opts)
map("i" , "<C-d>" , "<Del>", opts)
map("i" , "<C-e>" , "<ESC>$a", opts)
map("i" , "<C-k>" , "<ESC>d$a", opts)
map("i" , "<C-b>" , "<Left>", opts)
map("i" , "<C-f>" , "<Right>", opts)
map("i" , "<C-a>" , "<ESC>^i", opts)
map("i" , "<C-o>" , "<ESC>o", opts)
map("i" , "<M-p>" , [[<ESC>"+p]]    , opts)
map("i" , "<M-e>" , [[g$$]]    , opts)
map("n" , "<M-Y>" , [[gg"+yG]] , opts)
map("n" , "<M-y>" , [["+y$]]   , opts)
map("v" , "<M-y>" , [["+y]]    , opts)
map("n" , "<M-p>" , [["+p]]    , opts)
map("n" , "Y"     , [[y$]]     , opts)

map('n', '<C-q>', ':call QuickFixToggle()<CR>', opts)

map("n" , "<S-l>" , "<CMD>TablineBufferNext<CR>"     , opts)
map("n" , "<S-h>" , "<CMD>TablineBufferPrevious<CR>" , opts)
map("n" , "<M-k>" , "<CMD>TablineBufferNext<CR>"     , opts)
map("n" , "<M-j>" , "<CMD>TablineBufferPrevious<CR>" , opts)
map("n" , "<M-,>" , "<CMD>tabnext<CR>", opts)
map("n" , "<M-.>" , "<CMD>tabprevious<CR>", opts)
map("n" , "X"     , "<CMD>BDelete this<CR>", opts)
map('n' , "<C-n>" , "<CMD>VMClear<CR>", opts)

map("n", "<M-u>", "<CMD>UndotreeToggle<CR>" , nor)
map("n", "<M-J>", "<C-w>-" , nor)
map("n", "<M-K>", "<C-w>+" , nor)
map("n", "<M-H>", "<C-w><" , nor)
map("n", "<M-L>", "<C-w>>" , nor)
map("c" , "<C-f>" , "<Right>"  , nor)
map("c" , "<C-a>" , "<Home>"   , nor)
map("c" , "<C-b>" , "<Left>"   , nor)
map("c" , "<M-b>" , "<C-b>"    , nor)
map("c" , "<M-k>" , "<Up>"     , nor)
map("c" , "<M-j>" , "<Down>"   , nor)
map('n', '_', '<CMD>RnvimrToggle<CR>', opts)
  -- f = { "<cmd>:lua vim.lsp.buf.formatting_sync()<cr>" , "Format" }      ,
map('' , '<M-F>' , '<cmd>:lua vim.lsp.buf.format()<cr>', opts)
map(''  , '<M-f>' , ':Telescope find_files<CR>' , opts)
map(''  , '<M-o>' , ':Telescope oldfiles<CR>'   , opts)
map(''  , '<M-r>' , ':Telescope frecency<CR>'   , opts)
map(''  , '<M-m>' , ':Telescope keymaps<CR>'    , opts)
map('n' , "<M-b>" , ':Telescope buffers<CR>'    , opts)
map('n' , "<M-c>" , ':Telescope commands<CR>'    , opts)
map(''  , '<M-M>' , '<cmd>Bufferize map<cr>:set ic<cr>:setf vim<cr>', opts)
map('n' , "<M-z>", "<CMD>TZAtaraxis<CR>", opts)
map('n' , "<M-d>" , "<CMD>TroubleToggle<CR>"  , opts)
map('n' , "<M-t>" , "<CMD>Tagbar<CR>"         , opts)
map('n' , "<M-T>" , "<CMD>Vista<CR>"          , opts)
map('n' , "<M-e>" , "<CMD>NvimTreeToggle<CR>" , opts)
map('n', '<leader>e',"<CMD>NvimTreeToggle<CR>" , opts)
map('n' , "<M-s>" , ":w<CR>"                  , opts)
map('n' , "<M-q>" , ":q<CR>"                  , opts)
map('n' , "<M-Q>" , ":qall!<CR>"              , opts)

