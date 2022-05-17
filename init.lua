-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local vim = vim

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', { command = 'source <afile> | PackerCompile', group = packer_group, pattern = 'init.lua' })

XC = require('mxc.palette')

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'ludovicchabant/vim-gutentags'
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { "nvim-telescope/telescope-frecency.nvim", requires = { "tami5/sqlite.lua" } }
  use 'jvgrootveld/telescope-zoxide'
  use 'nvim-lualine/lualine.nvim'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use 'numToStr/Navigator.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'folke/which-key.nvim'
  use 'tpope/vim-repeat'
  use "wakatime/vim-wakatime"
  use "PHSix/faster.nvim"
  use { 'vimwiki/vimwiki', opt = true, cmd = { 'VimwikiDiaryIndex', 'VimwikiIndex' } }
  use { 'kevinhwang91/rnvimr', opt = true, cmd = 'RnvimrToggle' }
  use { "mg979/vim-visual-multi", opt = true, cmd = "VMClear", branch = 'master', }
  use 'norcalli/nvim-colorizer.lua'
  use 'j-hui/fidget.nvim'
  use {
    "williamboman/nvim-lsp-installer",
    {
      "neovim/nvim-lspconfig",
      config = function()
        require("nvim-lsp-installer").setup {}
        local lspconfig = require("lspconfig")
        lspconfig.sumneko_lua.setup {}
      end
    }
  }
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', }, tag = 'nightly', }
  use 'kdheepak/tabline.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'edluffy/specs.nvim'
  use 'f-person/git-blame.nvim'
  use 'p00f/nvim-ts-rainbow'
  use { 'nvim-treesitter/playground', opt = true, cmd = 'TSPlaygroundToggle' }
  use 'kazhala/close-buffers.nvim'
  use 'echasnovski/mini.nvim'
  use 'rcarriga/nvim-notify'
  use 'karb94/neoscroll.nvim'

  -- use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  -- use 'mjlbach/onedark.nvim'
  -- use 'tiagovla/tokyodark.nvim'
  use 'kyazdani42/nvim-palenight.lua'
  -- use 'lukas-reineke/indent-blankline.nvim'
end)

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- require('mxc')
require('core')
require('configure')
-- vim: ts=2 sts=2 sw=2 et
