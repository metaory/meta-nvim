-- require('lualine').setup {
--   options = {
--     icons_enabled = false,
--     theme = 'horizon',
--     -- theme = 'palenight',
--     component_separators = '|',
--     section_separators = '',
--   },
-- }
local XC = require('mxc.palette')

local colors = {
  red = XC.c01,
  grey = XC.c07,
  black = XC.c08,
  white = XC.sk3,
  light_green = XC.c10,
  orange = XC.c03,
  green = XC.c02,
}

local theme = {
  normal = {
    a = { fg = XC.sfg, bg = XC.sbg },
    b = { fg = XC.wbg, bg = XC.sk3 },
    c = { fg = XC.ebg, bg = XC.sk2 },
    z = { fg = XC.efg, bg = XC.ebg },
  },
  insert = { a = { fg = XC.wfg, bg = XC.wbg } },
  visual = { a = { fg = XC.efg, bg = XC.ebg } },
  replace = { a = { fg = XC.cf3, bg = XC.c03 } },
}

local empty = require('lualine.component'):extend()
function empty:draw(default_highlight)
  self.status = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = XC.sk0, bg = XC.sk0 } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' } or { left = '' }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

local function modified()
  if vim.bo.modified then
    return '+'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '-'
  end
  return ''
end

require('lualine').setup {
  options = {
    theme = theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = process_sections {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      'diff',
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'error' },
        diagnostics_color = { error = { bg = XC.c01, fg = XC.cf1 } },
      },
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'warn' },
        diagnostics_color = { warn = { bg = XC.c03, fg = XC.cf3 } },
      },
      { 'filename', file_status = false, path = 1 },
      { modified, color = { bg = XC.ebg, fg = XC.efg } },
      {
        '%w',
        cond = function()
          return vim.wo.previewwindow
        end,
      },
      {
        '%r',
        cond = function()
          return vim.bo.readonly
        end,
      },
      {
        '%q',
        cond = function()
          return vim.bo.buftype == 'quickfix'
        end,
      },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { search_result, 'filetype' },
    lualine_z = { '%l:%c', '%p%%/%L' },
  },
  inactive_sections = {
    lualine_c = { '%f %y %m' },
    lualine_x = {},
  },
}
