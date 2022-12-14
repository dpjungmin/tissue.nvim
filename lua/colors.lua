local p = require 'palette'

local colors = {
  error_foreground = p.red4,
  warning_foreground = p.yellow3,
  info_foreground = p.blue3,
  hint_foreground = p.gray3,
  none = 'None',
  yank = '#2ecc71',
}

colors['syntax'] = {
  comment = p.base03,
  number = p.base09,
  constant = p.purple2,
  func = p.orange2,
  character = p.red2,
  string = p.red2,
  identifier = p.base04,
  keyword = p.base0B,
  storage = p.base0B,
  tag = p.base04,
  debug = p.base04,
  delimiter = p.base06,
  operator = p.base05,
  type = p.base0A,
  todo = p.base0D,
  include = p.base03,
  exception = p.base0C,
  preprocessor = p.base04,
  macro = p.base0A,
}

colors['editor'] = {
  background = p.base00,
  bracket_match_background = p.base01,
  bufferline = {
    active_border = p.coral3,
    foreground = p.gray5,
    active_foreground = p.gray1,
  },
  colorcolumn = p.base01,
  cursor = {
    background = '#00ff00',
    active_background = '#ff0000',
  },
  diff = {
    inserted_line_background = p.green7,
    inserted_text_background = p.green5,
    removed_line_background = p.red7,
    removed_text_background = p.red5,
    old_file = p.coral5,
    new_file = p.green5,
    file = p.blue5,
  },
  find_match = { background = p.base0A, current = p.base0A },
  fold_background = p.base01,
  foreground = p.base05,
  git = {
    added_resource_foreground = p.green4,
    modified_resource_foreground = p.yellow4,
    deleted_resource_foreground = p.red4,
    untracked_resource_foreground = p.green4,
    ignored_resource_foreground = p.gray5,
    conflicting_resource_foreground = p.orange4,
    submodule_resource_foreground = p.gray3,
    blame_text_foreground = p.gray5,
  },
  indent_guide = {
    background = p.base01,
    active_background = p.base01,
  },
  line_highlight_background = p.gray7,
  line_number = {
    foreground = p.gray4,
    active_foreground = p.gray1,
  },
  popup = {
    foreground = p.base06,
    background = p.base01,
    highlight_blue = '#404b82',
    highlight_gray = p.base02,
  },
  selection = p.base01,
  split_border = p.gray6,
  title_foreground = p.blue2,
  whitespace = p.base01,
}

return colors
