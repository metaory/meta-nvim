vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "mxc"

local util = require "mxc.util"
Config = require "mxc.config"
C = require "mxc.palette"
local highlights = require "mxc.highlights"
local Treesitter = require "mxc.Treesitter"
local markdown = require "mxc.markdown"
local Whichkey = require "mxc.Whichkey"
local Notify = require "mxc.Notify"
local Git = require "mxc.Git"
-- local Hop = require "mxc.Hop"
local VM = require "mxc.VM"
local diff = require "mxc.diff"
local LSP = require "mxc.LSP"

local skeletons = {
  Treesitter,
  markdown,
  Whichkey,
  Notify,
  Git,
  -- Hop,
  diff,
  LSP,
  highlights,
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end
