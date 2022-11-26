-- Styles:
--   bold
--   underline
--   underlineline   double underline
--   undercurl       curly underline
--   underdot        dotted underline
--   underdash       dashed underline
--   strikethrough
--   reverse
--   inverse         same as reverse
--   italic
--   standout
--   nocombine       override attributes instead of combining them
--   NONE            no attributes used (used to reset it)

local styles = {
  comment = {},
  constant = {},
  string = {},
  number = {},
  func = {},
  conditional = {},
  macro = {},
  context = { 'bold' },
}

return styles
