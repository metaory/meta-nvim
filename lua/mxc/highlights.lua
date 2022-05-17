local C = C
local highlights = {
  TroubleNormal = { fg = C.c07 , bg = C.wk1 } ,
  Normal =   { fg = C.c07 , bg = C.sk2 } ,
  NormalNC = { fg = C.c08 , bg = Config.transparent_background and "NONE" or C.sk1 } ,
  SignColumn = { bg = C.sk1 },
  MsgArea = { fg = C.c07, bg = Config.transparent_background and "NONE" or C.bg },
  ModeMsg = { fg = C.sbg },
  MsgSeparator = { fg = C.fg, bg = C.bg },
  SpellBad = { fg = C.error_red, style = "underline" },
  SpellCap = { fg = C.yellow, style = "underline" },
  SpellLocal = { fg = C.green, style = "underline" },
  SpellRare = { fg = C.purple, style = "underline" },
  Pmenu = { fg = C.c01, bg = C.sk1 },
  PmenuSel = { fg = C.sfg, bg = C.sbg, style = "bold" },
  WildMenu = { fg = C.wfg, bg = C.wbg },
  Comment = { fg = C.gray, style = "italic" },
  Folded = { fg = C.accent, bg = C.alt_bg },
  FoldColumn = { fg = C.accent, bg = C.alt_bg },
  LineNr = { fg = C.sk6 },
  Whitespace = { fg = C.c01 },
  VertSplit = { fg = C.bg, bg = C.sk3 },

  gitblame = { bg = C.sk2, fg = C.sk5, style = "italic" },
  CursorLineNr = { fg = C.sbg, bg = C.sk3, style = "bold" },
  CursorLine = { bg = C.sk3 , style = 'bold'},
  CursorColumn = { bg = C.sk3, style = 'bold' },
  ColorColumn = { bg = C.sk3 },

  FloatBorder = { fg = C.sk3, bg = C.sk3 },
  NormalFloat = { bg = C.sk3 },
  WarningMsg = { fg = C.cx3, bg = C.bg },
  DiffAdd = { fg = C.alt_bg, bg = C.sign_add },
  DiffChange = { fg = C.alt_bg, bg = C.sign_change, style = "underline" },
  DiffDelete = { fg = C.alt_bg, bg = C.sign_delete },
  QuickFixLine = { bg = C.dark_gray },
  PmenuSbar = { bg = C.alt_bg },
  PmenuThumb = { bg = C.gray },
  MatchWord = { style = "underline" },
  MatchParen = { fg = C.cf3, bg = C.cx3, style = "bold" },
  MatchWordCur = { style = "underline" },
  MatchParenCur = { style = "underline" },
  Cursor = { fg = C.sfg, bg = C.sbg },
  lCursor = { fg = C.wfg, bg = C.wbg },
  CursorIM = { fg = C.efg, bg = C.ebg },
  TermCursor = { fg = C.cf1, bg = C.c01 },
  TermCursorNC = { fg = C.cf2, bg = C.c02 },
  Conceal = { fg = C.accent, bg = Config.transparent_background and "NONE" or C.bg },
  Directory = { fg = C.blue },
  SpecialKey = { fg = C.blue, style = "bold" },
  Title = { fg = C.blue, style = "bold" },
  ErrorMsg = { fg = C.sbg, bg = C.bg, style = "bold" },

  Search    = { fg = C.cf4, bg = C.cx4 },
  IncSearch = { fg = C.wfg, bg = C.wbg, style = "bold" },
  Visual    = { bg = C.ebg, fg = C.efg },

  VisualNOS = { bg = C.alt_bg },
  Substitute = { fg = C.wfg, bg = C.wbg },
  MoreMsg = { fg = C.orange },
  Question = { fg = C.orange },
  EndOfBuffer = { fg = C.sk4, bg = C.sk2 },
  NonText = { fg = C.context },
  Variable = { fg = C.sbg },
  String = { fg = C.green },
  Character = { fg = C.green },
  Constant = { fg = C.orange },
  Number = { fg = C.orange },
  Boolean = { fg = C.orange },
  Float = { fg = C.orange },
  Identifier = { fg = C.wbg },
  Function = { fg = C.blue },
  Operator = { fg = C.purple },
  Type = { fg = C.yellow },
  StorageClass = { fg = C.cyan },
  Structure = { fg = C.purple },
  Typedef = { fg = C.purple },
  Keyword = { fg = C.purple },
  Statement = { fg = C.purple },
  Conditional = { fg = C.cx3 },
  Repeat = { fg = C.purple },
  Label = { fg = C.blue },
  Exception = { fg = C.red },
  Include = { fg = C.purple },
  PreProc = { fg = C.purple },
  Define = { fg = C.purple },
  Macro = { fg = C.purple },
  PreCondit = { fg = C.cx1 },
  Special = { fg = C.purple },
  SpecialChar = { fg = C.sbg },
  Tag = { fg = C.blue },
  Debug = { fg = C.red },
  Delimiter = { fg = C.fg },
  SpecialComment = { fg = C.gray },
  Underlined = { style = "underline" },
  Bold = { style = "bold" },
  Italic = { style = "italic" },
  Ignore = { fg = C.cyan, bg = C.bg, style = "bold" },
  Todo = { fg = C.red, bg = C.bg, style = "bold" },
  Error = { fg = C.error_red, bg = C.bg, style = "bold" },

  -- BufferCurrent = { fg= C.red, bg = C.blue },
  -- BufferCurrentIndex = { fg= C.red, bg = C.blue },
  -- BufferCurrentTarget = { fg= C.red, bg = C.blue },
  -- BufferCurrentMod = { fg= C.red, bg = C.blue },
  -- BufferCurrentSign = { fg= C.red, bg = C.blue },

  -- TabLine = { fg = C.light_gray, bg = C.alt_bg },
  -- TabLineSel = { fg = C.red, bg = C.alt_bg },
  -- TabLineFill = { fg = C.fg, bg = C.alt_bg },
  CmpDocumentation = { fg = C.fg, bg = C.none },
  CmpDocumentationBorder = { fg = C.fg_dark, bg = C.none },
  CmpItemAbbr = { fg = C.fg, bg = C.none },
  CmpItemAbbrDeprecated = { fg = C.gray, bg = C.none },
  CmpItemAbbrMatch = { fg = C.sbg, bg = C.none },
  CmpItemAbbrMatchFuzzy = { fg = C.sbg, bg = C.none },
  CmpItemKind = { fg = C.blue, bg = C.none },

  -- TelescopeMatching xxx gui=bold guifg=#ddaeab
  -- TelescopeSelection xxx guifg=#181a1b
  -- TelescopeBorder xxx guifg=#4aa5ef guibg=#0d1012
  -- TelescopeSelection = { fg = C.wbg },
  rainbowcol1 = { fg = C.c01 },
  rainbowcol2 = { fg = C.c02 },
  rainbowcol3 = { fg = C.c03 },
  rainbowcol4 = { fg = C.c04 },
  rainbowcol5 = { fg = C.c05 },
  rainbowcol6 = { fg = C.c06 },
  rainbowcol7 = { fg = C.wbg },


  MiniIndentscopeSymbol = { fg = C.sk5 },

  MiniJump = { fg = C.wbg, style = "bold" },
}

-- vim.cmd[[hi! link CursorColumn CursorLine]]

return highlights
