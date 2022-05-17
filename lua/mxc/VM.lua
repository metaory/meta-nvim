local VM = {
  VM_Extend = { fg = C.wfg, bg = C.wbg },
  VM_Cursor = { fg = C.efg, bg = C.ebg },
  VM_Insert = { fg = C.sfg, bg = C.sbg },
  VM_Mono = { fg = C.ofg, bg = C.obg },
}

return VM

-- fg_bg('VM_Extend', xc.wfg, xc.wbg, '! ')
-- fg_bg('VM_Cursor', xc.efg, xc.ebg, '! ')
-- fg_bg('VM_Insert', xc.sfg, xc.sbg, '! ')
-- fg_bg('VM_Mono', xc.ofg, xc.obg, '! ')
