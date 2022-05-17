local Hop = {
  HopNextKey = { fg = C.efg, bg = C.ebg },
  HopNextKey1 = { fg = C.efg , bg = C.ebg, style = "bold" },
  HopNextKey2 = { fg = C.ebg , bg = C.efg, style = "bold" }
}

return Hop

-- cmd "hi HopNextKey  gui=bold"
-- cmd "hi HopNextKey1 gui=bold"
-- cmd "hi HopNextKey2 gui=italic"

-- fg_bg('HopNextKey', xc.efg, xc.ebg)
-- fg_bg('HopNextKey1', xc.efg, xc.ebg)
-- fg_bg('HopNextKey2', xc.ebg, xc.dk0)
-- fg('HopUnmatched', xc.dk5)
