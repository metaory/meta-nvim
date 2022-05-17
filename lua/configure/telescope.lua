-- Telescope
require('telescope').setup {
  defaults = {
    -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    borderchars = { "", "", "", "", "", "", "", "" },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

require 'telescope'.load_extension 'fzf'
require 'telescope'.load_extension 'zoxide'
require 'telescope'.load_extension 'frecency'
require 'telescope'.load_extension 'notify'
