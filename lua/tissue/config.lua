local c = require 'colors'
local p = require 'palette'
local s = require 'styles'

local config = {}

config['syntax'] = {
  Comment = { fg = c.syntax.comment, bg = c.none, style = s.comment },
  Constant = { fg = c.syntax.constant, bg = c.none, style = s.constant },
  Character = { fg = c.syntax.character, bg = c.none, style = s.string }, -- 'c', '\n'
  String = { fg = c.syntax.string, bg = c.none, style = s.string }, -- "Hello!"
  Number = { fg = c.syntax.number, bg = c.none, style = s.number }, -- 234, 0xa5
  Float = { link = 'Number' }, -- 5.3, 9e10
  Identifier = { fg = c.syntax.identifier, bg = c.none }, -- variable name
  Function = { fg = c.syntax.func, bg = c.none, style = s.func }, -- function name and methods for classes
  Statement = { fg = c.syntax.keyword, bg = c.none }, -- local, struct, let
  Keyword = { fg = c.syntax.keyword, bg = c.none },
  Conditional = { fg = c.syntax.keyword, bg = c.none, style = c.conditional }, -- if-else, switch
  Repeat = { link = 'Conditional' }, -- for, while, do-while
  Label = { link = 'Conditional' }, -- case, default
  Operator = { fg = c.syntax.operator, bg = c.none }, -- +, -, *
  Exception = { fg = c.syntax.exception, bg = c.none }, -- try, catch, throw
  Include = { fg = c.syntax.include, bg = c.none }, -- use, import, include
  PreProc = { fg = c.syntax.preprocessor, bg = c.none }, -- preprocessor
  Define = { fg = c.syntax.keyword, bg = c.none },
  Macro = { fg = c.syntax.macro, bg = c.none, style = s.macro },
  PreCondit = { fg = c.syntax.macro, bg = c.none },
  Type = { fg = c.syntax.type, bg = c.none }, -- int, long, char
  StorageClass = { fg = c.syntax.storage, bg = c.none }, -- static, register, volatile
  Structure = { link = 'StorageClass' }, -- struct, union, enum
  Special = { fg = c.syntax.keyword, bg = c.none },
  SpecialChar = { fg = c.editor.foreground, bg = c.none },
  Tag = { fg = c.syntax.tag, bg = c.none },
  SpecialComment = { fg = c.syntax.comment, bg = c.none },
  Debug = { fg = c.syntax.debug, bg = c.none },
  Delimiter = { fg = c.syntax.delimiter, bg = c.none },
  Underlined = { style = 'underline' },
  Bold = { style = 'bold' },
  Italic = { style = 'italic' },
  Error = {
    fg = c.error_foreground,
    bg = c.editor.background,
    sp = c.error_foreground,
    style = 'undercurl',
  },
  Todo = { fg = c.syntax.todo, bg = c.none, style = 'bold' },

  -- treesitter
  TSTag = { link = 'Tag' },
  -- TSNote = { fg = p.orange, bg = c.none, style = 'bold' },
  -- TSType = { fg = p.red, bg = c.none },
  -- TSError = { link = 'Error' },

  -- TSFunction = { link = 'Function' },
  -- TSFuncMacro = { c.cursor, bg = c.none },
  -- TSFuncBuiltin = { fg = c.cursor, bg = c.none },
  -- TSFunctionCall = { fg = c.cursor, bg = c.none },

  -- TSConstBuiltin = { fg = c.orange, bg = c.none },
  -- TSTypeBuiltin = { fg = c.warn, bg = c.none },

  -- TSField = { fg = c.light_blue, bg = c.none },
  -- TSMethodCall = { fg = c.light_blue, bg = c.none },
  -- TSAttribute = { fg = c.warn, bg = c.none },

  -- TSNamespace = { fg = c.light_blue, bg = c.none },
}

config['editor'] = {
  Normal = { fg = c.editor.foreground, bg = c.editor.background },
  NormalNC = { link = 'Normal' }, -- normal in non-current windows
  Cursor = { fg = c.none, bg = c.editor.cursor.background }, -- cursor in normal mode
  Cursor2 = { fg = c.none, bg = c.editor.cursor.active_background }, -- cursor in insert mode
  lCursor = { link = 'Cursor' },
  CursorIM = { link = 'Cursor' },
  TermCursor = { link = 'Cursor' }, -- cursor in a focused terminal
  TermCursorNC = {}, -- cursor in an unfocused terminal
  LineNr = { fg = c.editor.line_number.foreground },
  CursorLineNr = { fg = c.editor.line_number.active_foreground, style = 'bold' }, -- shows when `cursorline` is set
  CursorLine = { fg = c.none, bg = c.editor.line_highlight_background },
  CursorColumn = { link = 'CursorLine' },
  ColorColumn = { fg = c.none, bg = c.editor.colorcolumn }, -- color for column set with 'set colorcolumn'
  Conceal = { fg = c.editor.foreground, bg = c.editor.background }, -- placeholder characters substituted for concealed text (see 'conceallevel')
  SignColumn = { fg = c.none, bg = c.editor.background }, -- column where `signs` are displayed
  SignColumnSB = { link = 'SignColumn' },
  VertSplit = { fg = c.editor.split_border, bg = c.editor.background }, -- the column separating vertically split windows
  Title = { fg = c.editor.title_foreground, bg = c.none, style = 'bold' }, -- vim default title
  Visual = { fg = c.none, bg = c.editor.selection },
  VisualNOS = { link = 'Visual' },
  Search = { fg = c.editor.background, bg = c.editor.find_match.background }, -- `h: hlsearch`
  IncSearch = { fg = c.editor.background, bg = c.editor.find_match.current }, -- `h: incsearch`
  CurSearch = { link = 'IncSearch' }, -- search result under cursor Substitute = { link = 'Search' }, -- `:substitute` replacement text highlighting
  EndOfBuffer = { fg = c.editor.background, bg = c.none }, -- filler lines (~) after the end of the buffer
  Whitespace = { fg = c.editor.whitespace }, -- 'nbsp', 'space', 'tab' and 'trail' in 'listchars'
  NonText = { fg = c.editor.whitespace, bg = c.editor.background },
  SpecialKey = { link = 'NonText' }, -- `h: hl-Whitespace`
  MatchParen = { fg = c.none, bg = c.editor.bracket_match_background }, -- `:h pi_paren.txt`
  Folded = { fg = c.none, bg = c.editor.fold_background }, -- line used for closed folds
  FoldColumn = { fg = c.editor.foreground, bg = c.none },
  DiffAdd = { fg = c.none, bg = c.editor.diff.inserted_line_background },
  DiffChange = { fg = c.none, bg = c.editor.diff.removed_text_background },
  DiffDelete = { fg = c.none, bg = c.editor.diff.removed_line_background },
  DiffText = { fg = c.none, bg = c.editor.diff.inserted_text_background }, -- changed text within a changed line
  diffAdded = { link = 'DiffAdd' },
  diffChanged = { link = 'DiffChange' },
  diffRemoved = { link = 'DiffDelete' },
  diffOldFile = { fg = c.editor.diff.old_file },
  diffNewFile = { fg = c.editor.diff.new_file },
  diffFile = { fg = c.editor.diff.file },
  NormalFloat = { fg = p.base06, bg = c.none },
  FloatBorder = { fg = p.base04, bg = c.none },
  Directory = { fg = c.blue2 }, -- directory names
  ModeMsg = { fg = c.editor.foreground, bg = c.editor.background }, -- 'showmode' message
  MoreMsg = { link = 'ModeMsg' }, -- `h: more-prompt`
  Question = { fg = c.blue5, bg = c.editor.background }, -- `h: hit-enter` prompt and yes/no questions
  QuickFixLine = { link = 'Visual' }, -- current 'quickfix' item in the quickfix window
  Float = { fg = c.green2, bg = c.none },
  ErrorMsg = { fg = c.error_foreground }, -- error messages on the command line
  WarningMsg = { fg = c.warning_foreground },
  SpellBad = { sp = c.error_foreground, style = 'undercurl' },
  SpellCap = { sp = c.warning_foreground, style = 'undercurl' },
  SpellLocal = { sp = c.info_foreground, style = 'undercurl' },
  SpellRare = { sp = c.hint_foreground, style = 'undercurl' },
  Pmenu = { fg = c.editor.popup.foreground, bg = c.editor.popup.background }, -- popup menu (normal item)
  PmenuSel = { fg = c.editor.popup.foreground, bg = c.editor.popup.highlight_blue }, -- popup menu (selected item)
  PmenuSbar = { fg = c.none, bg = c.editor.popup.highlight_gray }, -- popup menu (scroll bar)
  PmenuThumb = { fg = c.none, bg = c.editor.popup.foreground }, -- popup menu (thumb of the scroll bar)
  WildMenu = { link = 'Pmenu' }, -- current match in 'wildmenu' completion

  -- WinBar = {}, -- window bar of current window
  -- WinBarNC = {}, -- window bar of not-current windows
  -- MsgArea          = {},
  -- MsgSeparator     = {},
  -- TabLine = {},
  -- TabLineFill = {},
  -- TabLineSel = {},
  -- diffLine         = {}, -- NOTE: not sure what this really is
  -- diffIndexLine    = {}, -- NOTE: not sure what this really is
  -- StatusLine = {},
  -- StatusLineNC = {}, -- statue line of not-current windows (Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window)
  -- qfLineNr        = {},
  -- qfFileName      = {},
  -- debugPC         = {}, -- used for highlighting the current line in terminal-debug
  -- debugBreakpoint = {}, -- used for breakpoint c in terminal-debug
}

config['custom'] = {
  EditorBackground = { fg = c.none, bg = c.editor.background },
  YankColor = { bg = c.yank },
  InlayHints = { fg = c.editor.line_number.foreground, bg = c.none },
  MatchAccent = { fg = p.base0C, bg = c.none, style = 'bold' },
}

config['plugins'] = {
  -- https://github.com/lewis6991/gitsigns.nvim
  GitSignsCurrentLineBlame = { fg = c.editor.git.blame_text_foreground, bg = c.none },
  GitSignsAdd = { fg = c.editor.git.added_resource_foreground, bg = c.none },
  GitSignsChange = { fg = c.editor.git.modified_resource_foreground, bg = c.none },
  GitSignsDelete = { fg = c.editor.git.deleted_resource_foreground, bg = c.none },
  GitSignsAddInline = { fg = c.editor.foreground, bg = c.editor.git.added_resource_foreground },
  GitSignsAddLnInline = { link = 'GitSignsAddInline' },
  GitSignsAddLnVirtLnInline = { link = 'GitSignsAddInline' },
  GitSignsChangeInline = {
    fg = c.editor.foreground,
    bg = c.editor.git.modified_resource_foreground,
  },
  GitSignsChangeLnInline = { link = 'GitSignsChangeInline' },
  GitSignsChangeLnVirtLnInline = { link = 'GitSignsChangeInline' },
  GitSignsDeleteInline = {
    fg = c.editor.foreground,
    bg = c.editor.git.deleted_resource_foreground,
  },
  GitSignsDeleteLnInline = { link = 'GitSignsDeleteInline' },
  GitSignsDeleteLnVirtLnInline = { link = 'GitSignsDeleteInline' },

  -- https://github.com/lukas-reineke/indent-blankline.nvim
  IndentBlanklineChar = { fg = c.editor.indent_guide.background, bg = c.none },
  IndentBlanklineContextChar = { fg = c.editor.indent_guide.active_background, bg = c.none },
  IndentBlanklineContextStart = { fg = c.editor.indent_guide.background, c.none },

  -- https://github.com/nvim-telescope/telescope.nvim
  TelescopeBorder = { fg = c.editor.line_number.foreground, bg = c.none },
  TelescopeSelectionCaret = { fg = p.blue, bg = c.none },
  TelescopeSelection = { fg = c.editor.foreground, bg = c.editor.selection },
  TelescopeMultiSelection = { link = 'TelescopeSelection' },
  TelescopeMatching = { link = 'MatchAccent' },
  TelescopePromptPrefix = { fg = p.base0C, bg = c.none, style = 'bold' },

  -- https://github.com/akinsho/bufferline.nvim
  BufferLineFill = { fg = c.none, bg = c.editor.background },
  BufferLineBackground = { fg = c.editor.bufferline.foreground, bg = c.editor.background },
  BufferLineBufferVisible = { link = 'BufferLineBackground' },
  BufferLineBufferSelected = {
    fg = c.editor.bufferline.active_foreground,
    bg = c.editor.background,
  },
  BufferLineSeparator = { fg = c.editor.background, bg = c.editor.background },
  BufferLineSeparatorVisible = { link = 'BufferLineSeparator' },
  BufferLineSeparatorSelected = { fg = c.editor.bufferline.active_border, bg = 'pink' },
  BufferLineIndicatorSelected = {
    fg = c.editor.bufferline.active_border,
    bg = c.editor.background,
  },
  BufferLineTab = { fg = c.editor.bufferline.foreground, bg = c.editor.background },
  BufferLineTabSelected = {
    fg = c.editor.cursor.background,
    bg = c.editor.background,
    style = 'bold',
  },
  BufferLineDuplicate = { fg = c.editor.bufferline.foreground, bg = c.none, style = 'italic' },
  BufferLineDuplicateVisible = { fg = c.editor.bufferline.foreground, bg = c.none },
  BufferLineDuplicateSelected = {
    fg = c.editor.bufferline.foreground,
    bg = c.none,
    style = 'italic',
  },
  BufferLineHint = { fg = c.hint_foreground, bg = c.none },
  BufferLineHintVisible = { fg = c.hint_foreground, bg = c.none },
  BufferLineHintSelected = { fg = c.hint_foreground, bg = c.none, style = 'bold' },
  BufferLineHintDiagnostic = { fg = c.hint_foreground, bg = c.none },
  BufferLineHintDiagnosticVisible = { fg = c.hint_foreground, bg = c.none },
  BufferLineHintDiagnosticSelected = { fg = c.hint_foreground, bg = c.none, style = 'bold' },
  BufferLineInfo = { fg = c.info_foreground, bg = 'NONE' },
  BufferLineInfoVisible = { fg = c.info_foreground, bg = c.none },
  BufferLineInfoSelected = { fg = c.info_foreground, bg = c.none, style = 'bold' },
  BufferLineInfoDiagnostic = { fg = c.info_foreground, bg = c.none },
  BufferLineInfoDiagnosticVisible = { fg = c.info_foreground, bg = c.none },
  BufferLineInfoDiagnosticSelected = { fg = c.info_foreground, bg = c.none, style = 'bold' },
  BufferLineWarning = { fg = c.warning_foreground, bg = c.none },
  BufferLineWarningVisible = { fg = c.warning_foreground, bg = c.none },
  BufferLineWarningSelected = { fg = c.warning_foreground, bg = c.none, style = 'bold' },
  BufferLineWarningDiagnostic = { fg = c.warning_foreground, bg = c.none },
  BufferLineWarningDiagnosticVisible = { fg = c.warning_foreground, bg = c.none },
  BufferLineWarningDiagnosticSelected = { fg = c.warning_foreground, bg = c.none, style = 'bold' },
  BufferLineError = { fg = c.error_foreground, bg = 'NONE' },
  BufferLineErrorVisible = { fg = c.error_foreground, bg = c.none },
  BufferLineErrorSelected = { fg = c.error_foreground, bg = c.none, style = 'bold' },
  BufferLineErrorDiagnostic = { fg = c.error_foreground, bg = c.none },
  BufferLineErrorDiagnosticVisible = { fg = c.error_foreground, bg = c.none },
  BufferLineErrorDiagnosticSelected = { fg = c.error_foreground, bg = c.none, style = 'bold' },

  -- https://github.com/kyazdani42/nvim-tree.lua
  NvimTreeGitNew = { fg = c.editor.git.added_resource_foreground, bg = c.none },
  NvimTreeGitRenamed = { fg = c.editor.git.modified_resource_foreground, bg = c.none },
  NvimTreeRootFolder = { fg = c.editor.foreground, bg = c.none },
  NvimTreeGitDeleted = { fg = c.editor.git.deleted_resource_foreground, bg = c.none },
  NvimTreeSpecialFile = { fg = c.editor.foreground, bg = c.none, style = { 'underline', 'bold' } },

  -- https://github.com/simrat39/symbols-outline.nvim
  FocusedSymbol = { link = 'Title' },

  -- https://github.com/nvim-treesitter/nvim-treesitter-context
  TreesitterContext = { fg = c.editor.foreground, bg = p.base01, style = s.context },

  -- https://github.com/folke/which-key.nvim
  WhichKeyBorder = { fg = c.editor.foreground, bg = c.none },

  -- https://github.com/hrsh7th/nvim-cmp
  CmpItemMenu = { link = 'Comment' },
  CmpItemAbbrDeprecated = { fg = '#808080', bg = c.none, style = 'strikethrough' },
  CmpItemAbbrMatch = { fg = p.base0C, bg = c.none, style = 'bold' },
  CmpItemAbbrMatchFuzzy = { fg = p.base0C, bg = c.none, style = 'bold' },
  CmpItemKindVariable = { fg = p.blue2, bg = c.none },
  CmpItemKindInterface = { link = 'CmpItemKindVariable' },
  CmpItemKindText = { link = 'CmpItemKindVariable' },
  CmpItemKindFunction = { fg = p.base0D, bg = c.none },
  CmpItemKindMethod = { link = 'CmpItemKindFunction' },
  CmpItemKindKeyword = { fg = p.base05, bg = c.none },
  CmpItemKindUnit = { link = 'CmpItemKindKeyword' },
}

return config
