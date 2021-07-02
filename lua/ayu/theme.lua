local colors = require'ayu.colors'

local ayu = {}

-- SYNTAX: {{{1
ayu.define_syntax = function ()
  -- FIXED: {{{2
  local syntax = {
    -- Basics {{{3
    Boolean             = { fg = colors.markup },
    Conditional         = { fg = colors.keyword },
    Constant            = { fg = colors.constant },
    Debug               = { fg = colors.accent },
    Define              = { fg = colors.keyword },
    Delimiter           = { fg = colors.special },
    Error               = { fg = colors.error, sp = 'underline' },
    Exception           = { fg = colors.markup },
    Float               = { fg = colors.markup },
    Function            = { fg = colors.func },
    Identifier          = { fg = colors.entity },
    Ignore              = { fg = colors.fg },
    Include             = { fg = colors.func },
    Keyword             = { fg = colors.keyword },
    Label               = { fg = colors.keyword },
    Macro               = { fg = colors.special },
    Number              = { fg = colors.markup },
    Operator            = { fg = colors.operator },
    PreCondit           = { fg = colors.special },
    PreProc             = { fg = colors.accent },
    Repeat              = { fg = colors.keyword },
    Special             = { fg = colors.accent },
    SpecialChar         = { fg = colors.keyword },
    SpecialComment      = { fg = colors.entity },
    Statement           = { fg = colors.keyword },
    StorageClass        = { fg = colors.special },
    Structure           = { fg = colors.special },
    Tag                 = { fg = colors.accent },
    Todo                = { fg = colors.markup, style = 'bold,italic' },
    Type                = { fg = colors.entity },
    Typedef             = { fg = colors.accent },
    Underlined          = { fg = colors.tag, sp = colors.tag, style = 'underline' },
    -- }}}

    -- Languages {{{3
    htmlLink            = { fg = colors.tag,      style = "underline" },
    htmlH1              = { fg = colors.special,  style = "bold" },
    htmlH2              = { fg = colors.accent,   style = "bold" },
    htmlH3              = { fg = colors.string,   style = "bold" },
    htmlH4              = { fg = colors.constant, style = "bold" },
    htmlH5              = { fg = colors.keyword,  style = "bold" },

    markdownH1          = { fg = colors.special,  style = "bold,italic" },
    markdownH2          = { fg = colors.accent,   style = "bold" },
    markdownH3          = { fg = colors.string,   style = "bold" },
    markdownH4          = { fg = colors.tag,      style = "bold" },
    markdownCode        = { bg = colors.panel_bg, style = "italic" },
    markdownCodeBlock   = { bg = colors.panel_bg, style = "italic" },
    markdownH1Delimiter = { fg = colors.special },
    markdownH2Delimiter = { fg = colors.accent },
    markdownH3Delimiter = { fg = colors.string },
    markdownH4Delimiter = { fg = colors.tag },
    -- }}}
  }
  -- }}}

  -- OPTIONS: {{{2
  -- Italicize comments
  if vim.g.ayu_italic_comments then
    syntax.Comment = { fg = colors.comment, style = 'italic' }
  else
    syntax.Comment = { fg = colors.comment }
  end
  -- Italicize string and characters
  if vim.g.ayu_italic_strings then
    syntax.String     = { fg = colors.string, style = 'italic' }
    syntax.Character  = { fg = colors.markup, style = 'italic' }
  else
    syntax.String     = { fg = colors.string }
    syntax.Character  = { fg = colors.markup }
  end
  -- }}}

  return syntax
end
-- }}}

-- EDITOR: {{{1
ayu.define_editor = function ()
  -- FIXED: {{{2
  local editor = {
    ColorColumn       = { bg = colors.line },
    Conceal           = { fg = colors.comment },
    CursorColumn      = { bg = colors.line },
    CursorLine        = { bg = colors.line },
    CursorLineConceal = { fg = colors.guide_normal, bg = colors.line },
    CursorLineNr      = { fg = colors.accent, bg = colors.line },
    DiffAdd           = { bg = colors.vcs_added_bg },
    DiffAdded         = { fg = colors.vcs_added },
    DiffChange        = { bg = colors.vcs_modified_bg },
    DiffDelete        = { bg = colors.vcs_removed_bg },
    DiffRemoved       = { fg = colors.vcs_removed },
    DiffText          = { bg = colors.vcs_diff_text },
    Directory         = { fg = colors.func },
    ErrorMsg          = { fg = colors.white, bg = colors.error, style = 'standout' },
    FoldColumn        = { bg = colors.bg },
    Folded            = { fg = colors.fg_idle, bg = colors.panel_bg },
    IncSearch         = { fg = colors.keyword, bg = colors.ui },
    LineNr            = { fg = colors.guide_normal },
    MatchParen        = { style = 'underline', sp = colors.func },
    ModeMsg           = { fg = colors.string },
    MoreMsg           = { fg = colors.string },
    NonText           = { fg = colors.guide_normal },
    NormalFloat       = { fg = colors.fg,      bg = colors.float },
    Pmenu             = { fg = colors.fg,      bg = colors.selection_inactive },
    PmenuSbar         = { fg = colors.accent,  bg = colors.selection_inactive },
    PmenuSel          = { fg = colors.accent,  bg = colors.selection_inactive, style = 'reverse' },
    PmenuThumb        = { fg = colors.fg,      bg = colors.accent },
    Question          = { fg = colors.string },
    QuickFixLine      = { fg = colors.special, bg = colors.guide_normal },
    Search            = { fg = colors.bg,      bg = colors.constant },
    SpecialKey        = { fg = colors.selection_inactive },
    SpellBad          = { style = 'undercurl', sp = colors.error },
    SpellCap          = { style = 'undercurl', sp = colors.tag },
    SpellLocal        = { style = 'undercurl', sp = colors.keyword },
    SpellRare         = { style = 'undercurl', sp = colors.regexp },
    StatusLine        = { fg = colors.fg,      bg = colors.panel_bg },
    StatusLineNC      = { fg = colors.fg_idle, bg = colors.panel_bg },
    StatusLineTerm    = { fg = colors.fg,      bg = colors.panel_bg },
    StatusLineTermNC  = { fg = colors.fg_idle, bg = colors.panel_bg },
    TabLine           = { fg = colors.comment, bg = colors.panel_shadow },
    TabLineFill       = { fg = colors.fg,      bg = colors.panel_border },
    TabLineSel        = { fg = colors.fg,      bg = colors.bg },
    Title             = { fg = colors.keyword },
    Visual            = { bg = colors.selection_inactive },
    VisualNOS         = { bg = colors.selection },
    WarningMsg        = { fg = colors.warning },
    WildMenu          = { fg = colors.fg, bg = colors.markup },
    healthError       = { fg = colors.error },
    healthSuccess     = { fg = colors.string },
    healthWarning     = { fg = colors.warning },
    qfLineNr          = { fg = colors.keyword },
  -- }}}
  }

  -- OPTIONS: {{{2
  --Set transparent background
  if vim.g.ayu_disable_bg then
    editor.Normal     = { fg = colors.fg, bg = colors.none }
    editor.SignColumn = { fg = colors.fg, bg = colors.none }
  else
    editor.Normal     = { fg = colors.fg, bg = colors.bg }
    editor.SignColumn = { fg = colors.fg, bg = colors.bg }
  end
  -- Remove window split borders
  if vim.g.ayu_borders then
    editor.VertSplit = { fg = colors.panel_border, bg = colors.bg }
  else
    editor.VertSplit = { fg = colors.bg, bg = colors.none }
  end
  -- }}}

  return editor
end
-- }}}

-- TERMINAL: {{{1
ayu.define_terminal = function ()
  vim.g.terminal_color_0  = colors.bg
  vim.g.terminal_color_1  = colors.markup
  vim.g.terminal_color_2  = colors.string
  vim.g.terminal_color_3  = colors.accent
  vim.g.terminal_color_4  = colors.tag
  vim.g.terminal_color_5  = colors.constant
  vim.g.terminal_color_6  = colors.regexp
  vim.g.terminal_color_7  = colors.black
  vim.g.terminal_color_8  = colors.fg_idle
  vim.g.terminal_color_9  = colors.error
  vim.g.terminal_color_10 = colors.string
  vim.g.terminal_color_11 = colors.accent
  vim.g.terminal_color_12 = colors.tag
  vim.g.terminal_color_13 = colors.constant
  vim.g.terminal_color_14 = colors.regexp
  vim.g.terminal_color_15 = colors.comment
end
-- }}}

-- TREESITTER: {{{1
ayu.define_treeSitter = function ()
  -- FIXED: {{{2

  local treesitter = {
    TSAnnotation         = { fg = colors.markup },
    TSAttribute          = { fg = colors.accent },
    TSBoolean            = { fg = colors.markup },
    TSConditional        = { fg = colors.keyword },
    TSConstBuiltin       = { fg = colors.entity },
    TSConstMacro         = { fg = colors.func },
    TSConstant           = { fg = colors.constant },
    TSConstructor        = { fg = colors.entity },
    TSEmphasis           = { fg = colors.special },
    TSError              = { fg = colors.error },
    TSException          = { fg = colors.constant },
    TSField              = { fg = colors.entity },
    TSFloat              = { fg = colors.accent },
    TSFuncBuiltin        = { fg = colors.special },
    TSFuncMacro          = { fg = colors.entity },
    TSFunction           = { fg = colors.func },
    TSInclude            = { fg = colors.special },
    TSKeyword            = { fg = colors.keyword },
    TSKeywordFunction    = { fg = colors.func },
    TSLabel              = { fg = colors.accent },
    TSLiteral            = { fg = colors.fg },
    TSMethod             = { fg = colors.func },
    TSNamespace          = { fg = colors.constant },
    TSNumber             = { fg = colors.markup },
    TSOperator           = { fg = colors.special },
    TSParameter          = { fg = colors.tag },
    TSParameterReference = { fg = colors.tag },
    TSProperty           = { fg = colors.tag },
    TSPunctBracket       = { fg = colors.special },
    TSPunctDelimiter     = { fg = colors.special },
    TSPunctSpecial       = { fg = colors.special },
    TSRepeat             = { fg = colors.keyword },
    TSStrike             = { },
    TSSymbol             = { fg = colors.constant },
    TSTag                = { fg = colors.accent },
    TSTagDelimiter       = { fg = colors.constant },
    TSText               = { fg = colors.fg },
    TSTextReference      = { fg = colors.constant },
    TSTitle              = { fg = colors.ui, style = 'bold' },
    TSType               = { fg = colors.keyword },
    TSTypeBuiltin        = { fg = colors.keyword },
    TSURI                = { fg = colors.tag },
    TSUnderline          = { sp = colors.tag, style = 'underline' },
    TSVariable           = { fg = colors.operator },
    TSVariableBuiltin    = { fg = colors.operator },
  }
  -- }}}

  -- OPTIONS: {{{2
  -- Italicize comments
  if vim.g.ayu_italic_comments then
    treesitter.TSComment = { fg = colors.comment , bg = colors.none, style = 'italic' }
  else
    treesitter.TSComment = { fg = colors.comment }
  end
  -- Italicize string and characters
  if vim.g.ayu_italic_strings then
    treesitter.TSCharacter    = { fg = colors.markup, style = 'italic' }
    treesitter.TSString       = { fg = colors.string, style = 'italic' }
    treesitter.TSStringEscape = { fg = colors.fg, style = 'italic' }
    treesitter.TSStringRegex  = { fg = colors.func, style = 'italic' }
  else
    treesitter.TSCharacter    = { fg = colors.markup }
    treesitter.TSString       = { fg = colors.string }
    treesitter.TSStringEscape = { fg = colors.fg }
    treesitter.TSStringRegex  = { fg = colors.func }
  end
  -- }}}

  return treesitter
end
-- }}}

-- LSP: {{{1
ayu.define_LSP = function ()
  local lsp = {
    LspDiagnosticsDefaultError           = { fg = colors.error },
    LspDiagnosticsDefaultHint            = { fg = colors.regexp  },
    LspDiagnosticsDefaultInformation     = { fg = colors.tag },
    LspDiagnosticsDefaultWarning         = { fg = colors.keyword },
    LspDiagnosticsError                  = { fg = colors.error },
    LspDiagnosticsFloatingError          = { fg = colors.error },
    LspDiagnosticsFloatingHint           = { fg = colors.regexp  },
    LspDiagnosticsFloatingInformation    = { fg = colors.tag },
    LspDiagnosticsFloatingWarning        = { fg = colors.keyword },
    LspDiagnosticsHint                   = { fg = colors.keyword },
    LspDiagnosticsInformation            = { fg = colors.tag },
    LspDiagnosticsSignError              = { fg = colors.error },
    LspDiagnosticsSignHint               = { fg = colors.regexp  },
    LspDiagnosticsSignInformation        = { fg = colors.tag },
    LspDiagnosticsSignWarning            = { fg = colors.keyword },
    LspDiagnosticsUnderlineError         = { style = 'undercurl', sp = colors.error },
    LspDiagnosticsUnderlineHint          = { style = 'undercurl', sp = colors.regexp },
    LspDiagnosticsUnderlineInformation   = { style = 'undercurl', sp = colors.tag },
    LspDiagnosticsUnderlineWarning       = { style = 'undercurl', sp = colors.keyword },
    LspDiagnosticsVirtualTextError       = { fg = colors.error },
    LspDiagnosticsVirtualTextHint        = { fg = colors.regexp },
    LspDiagnosticsVirtualTextInformation = { fg = colors.tag },
    LspDiagnosticsVirtualTextWarning     = { fg = colors.keyword },
    LspDiagnosticsWarning                = { fg = colors.regexp },
    LspReferenceRead                     = { fg = colors.accent, bg = colors.panel_bg },
    LspReferenceText                     = { fg = colors.accent, bg = colors.panel_bg },
    LspReferenceWrite                    = { fg = colors.accent, bg = colors.panel_bg },
  }

  return lsp
end
-- }}}

-- PLUGINS: {{{1
ayu.define_plugins = function()
  local plugins = {
    -- BUFFERLINE: {{{2
    BufferLineIndicatorSelected = { fg = colors.accent },
    BufferLineFill              = { bg = colors.sidebar },
    -- }}}
    -- CURSORWORD: {{{2
    CursorWord  = { bg = colors.selection_inactive },
    CursorWord0 = { bg = colors.selection_inactive },
    CursorWord1 = { bg = colors.selection_inactive },
    -- }}}
    -- COC: {{{2
    CocCodeLens           = {fg = colors.comment },
    CocDiagnosticsError   = {fg = colors.error },
    CocDiagnosticsHint    = {fg = colors.blue },
    CocDiagnosticsInfo    = {fg = colors.tag },
    CocDiagnosticsWarning = {fg = colors.orange },
    CocErrorFloat         = {fg = colors.error },
    CocErrorHighlight     = {fg = colors.none, bg = colors.none, style = 'undercurl', sp = colors.error },
    CocErrorSign          = {fg = colors.error },
    CocHintFloat          = {fg = colors.regexp },
    CocHintHighlight      = {fg = colors.none, bg = colors.none, style = 'undercurl', sp = colors.regexp },
    CocHintSign           = {fg = colors.regexp },
    CocInfoFloat          = {fg = colors.tag },
    CocInfoHighlight      = {fg = colors.none, bg = colors.none, style = 'undercurl', sp = colors.tag },
    CocInfoSign           = {fg = colors.tag },
    CocSelectedText       = {fg = colors.red },
    CocWarningFloat       = {fg = colors.warning },
    CocWarningHighlight   = {fg = colors.none, bg = colors.none, style = 'undercurl', sp = colors.warning },
    CocWarningSign        = {fg = colors.warning },
    -- }}}
    -- DIFF: {{{2
    diffAdded     = { fg = colors.vcs_added },
    diffChanged   = { fg = colors.vcs_modified },
    diffFile      = { fg = colors.guide_active },
    diffIndexLine = { fg = colors.keyword },
    diffLine      = { fg = colors.line },
    diffNewFile   = { fg = colors.ui },
    diffOldFile   = { fg = colors.guide_normal },
    diffRemoved   = { fg = colors.vcs_removed },
    -- }}}
    -- GITGUTTER: {{{2
    -- GitGutterAdd    = { fg = colors.string },
    -- GitGutterChange = { fg = colors.func },
    -- GitGutterDelete = { fg = colors.accent },
    -- }}}
    -- GITSIGNS: {{{2
    GitSignsAdd      = { fg = colors.vcs_added },
    GitSignsAddNr    = { fg = colors.vcs_added },
    GitSignsAddLn    = { fg = colors.vcs_added },
    GitSignsChange   = { fg = colors.vcs_modified },
    GitSignsChangeNr = { fg = colors.vcs_modified },
    GitSignsChangeLn = { fg = colors.vcs_modified },
    GitSignsDelete   = { fg = colors.vcs_removed },
    GitSignsDeleteNr = { fg = colors.vcs_removed },
    GitSignsDeleteLn = { fg = colors.vcs_removed },
    -- }}}
    -- Hop {{{2
    HopNextKey   = { fg = colors.keyword, sp = colors.keyword, style = 'bold,underline' },
    HopNextKey1  = { fg = colors.entity, sp = colors.tag, style = 'bold,underline' },
    HopNextKey2  = { fg = colors.tag },
    HopUnmatched = { fg = colors.comment },
    -- }}}
    -- INDENTBLANKLINE: {{{2
    IndentBlanklineChar        = { fg = colors.guide_active },
    IndentBlanklineContextChar = { fg = colors.guide_active },
    -- }}}
    -- LSPSAGA: {{{2
    -- DiagnosticError            = { fg = colors.error },
    -- DiagnosticWarning          = { fg = colors.constant },
    -- DiagnosticInformation      = { fg = colors.tag },
    -- DiagnosticHint             = { fg = colors.keyword },
    -- DiagnosticTruncateLine     = { fg = colors.fg },
    -- LspFloatWinNormal          = { bg = colors.selection_inactive },
    -- LspFloatWinBorder          = { fg = colors.keyword },
    -- LspSagaBorderTitle         = { fg = colors.special },
    -- LspSagaHoverBorder         = { fg = colors.tag },
    -- LspSagaRenameBorder        = { fg = colors.string },
    -- LspSagaDefPreviewBorder    = { fg = colors.string },
    -- LspSagaCodeActionBorder    = { fg = colors.func },
    -- LspSagaFinderSelection     = { fg = colors.string },
    -- LspSagaCodeActionTitle     = { fg = colors.tag },
    -- LspSagaCodeActionContent   = { fg = colors.keyword },
    -- LspSagaSignatureHelpBorder = { fg = colors.keyword },
    -- ReferencesCount            = { fg = colors.keyword },
    -- DefinitionCount            = { fg = colors.keyword },
    -- DefinitionIcon             = { fg = colors.func },
    -- ReferencesIcon             = { fg = colors.func },
    -- TargetWord                 = { fg = colors.special },
    -- }}}
    -- LSPTROUBLE: {{{2
    -- LspTroubleText   = { fg = colors.text },
    -- LspTroubleCount  = { fg = colors.keyword, bg = colors.line },
    -- LspTroubleNormal = { fg = colors.fg, bg = colors.sidebar },
    -- }}}
    -- NEOGIT: {{{2
    -- NeogitBranch               = { fg = colors.tag },
    NeogitDiffAddHighlight     = { fg = colors.vcs_added_bg },
    NeogitDiffContextHighlight = { bg = colors.line },
    NeogitDiffDeleteHighlight  = { bg = colors.vcs_removed_bg },
    NeogitHunkHeader           = { fg = colors.tag },
    NeogitHunkHeaderHighlight  = { fg = colors.tag, bg = colors.line },
    -- NeogitRemote               = { fg = colors.keyword },
    -- }}}
    -- NVIMDAP: {{{2
    -- DapBreakpoint = { fg = colors.accent },
    -- DapStopped    = { fg = colors.string },
    -- }}}
    -- NVIMTREE: {{{2
    NvimTreeEmptyFolderName  = { fg = colors.fg },
    NvimTreeExecFile         = { fg = colors.fg },
    NvimTreeFolderIcon       = { fg = colors.accent },
    NvimTreeFolderName       = { fg = colors.special },
    NvimTreeGitDeleted       = { fg = colors.vcs_removed },
    NvimTreeGitDirty         = { fg = colors.accent },
    NvimTreeGitMerge         = { fg = colors.error },
    NvimTreeGitNew           = { fg = colors.vcs_added },
    NvimTreeGitStaged        = { fg = colors.vcs_modified },
    NvimTreeImageFile        = { fg = colors.constant },
    NvimTreeIndentMarker     = { fg = colors.guide_normal },
    NvimTreeOpenedFolderName = { fg = colors.special },
    NvimTreeRootFolder       = { fg = colors.keyword },
    NvimTreeSpecialFile      = { fg = colors.fg },
    NvimTreeWindowPicker     = { fg = colors.keyword, bg = colors.panel_border, style = 'bold' },
    -- }}}
    -- PACKER: {{{2
    packerBool             = { fg = colors.markup,             bg = colors.none },
    packerFail             = { fg = colors.error,              bg = colors.none },
    packerHash             = { fg = colors.vcs_added,          bg = colors.none },
    packerOutput           = { fg = colors.fg,                 bg = colors.none },
    packerPackageName      = { fg = colors.entity,             bg = colors.none },
    packerPackageNotLoaded = { fg = colors.keyword,            bg = colors.none },
    packerProgress         = { fg = colors.constant,           bg = colors.none },
    packerRelDate          = { fg = colors.constant,           bg = colors.none },
    packerStatus           = { fg = colors.entity,             bg = colors.none },
    packerStatusCommit     = { fg = colors.vcs_added,          bg = colors.none },
    packerStatusFail       = { fg = colors.vcs_removed,        bg = colors.none },
    packerStatusSuccess    = { fg = colors.vcs_diff_text,      bg = colors.none },
    packerString           = { fg = colors.string,             bg = colors.none, style = 'italic' },
    packerSuccess          = { fg = colors.ui,                 bg = colors.none },
    packerTimeHigh         = { fg = colors.selection_bg,       bg = colors.none },
    packerTimeLow          = { fg = colors.selection_border,   bg = colors.none },
    packerTimeMedium       = { fg = colors.selection_inactive, bg = colors.none },
    packerTrivial          = { fg = colors.warning,            bg = colors.none },
    packerWorking          = { fg = colors.fg_idle,            bg = colors.none },
    -- }}}
    -- SNEAK: {{{2
    -- Sneak      = { fg = colors.bg, bg = colors.accent },
    -- SneakScope = { bg = colors.selection },
    -- }}}
    -- STARTIFY: {{{2
    StartifyNumber = { fg = colors.comment },
    StartifyBracket = { fg = colors.comment },
    StartifySection = { fg = colors.accent },
    -- }}}
    -- TELESCOPE: {{{2
    TelescopeNormal         = { fg = colors.fg, bg = colors.float },
    TelescopePromptBorder   = { fg = colors.accent },
    TelescopeResultsBorder  = { fg = colors.keyword },
    TelescopePreviewBorder  = { fg = colors.string },
    TelescopeSelectionCaret = { fg = colors.keyword },
    TelescopeSelection      = { fg = colors.keyword, bg = colors.line },
    TelescopeMatching       = { fg = colors.special },
    -- }}}
    -- WHICHKEY: {{{2
    WhichKey          = { fg = colors.accent , style = 'bold'},
    WhichKeyGroup     = { fg = colors.entity },
    WhichKeyDesc      = { fg = colors.func, style = 'italic' },
    WhichKeySeparator = { fg = colors.fg },
    WhichKeyFloating  = { bg = colors.float },
    WhichKeyFloat     = { bg = colors.float },
    -- }}}
  }

  --Set transparent background
  if vim.g.ayu_disable_bg then
    plugins.NvimTreeNormal = { fg = colors.fg, bg = colors.none }
    plugins.StartifyFile   = { fg = colors.fg, bg = colors.none }
    plugins.StartifyFooter = { fg = colors.fg, bg = colors.none }
    plugins.StartifySlash  = { fg = colors.fg, bg = colors.none }
    plugins.StartifyPath   = { fg = colors.entity, bg = colors.none, style = 'italic' }
  else
    plugins.NvimTreeNormal = { fg = colors.fg, bg = colors.sidebar }
    plugins.StartifyFile   = { fg = colors.fg, bg = colors.sidebar }
    plugins.StartifyFooter = { fg = colors.fg, bg = colors.sidebar }
    plugins.StartifySlash  = { fg = colors.fg, bg = colors.sidebar }
    plugins.StartifyPath   = { fg = colors.entity, bg = colors.sidebar, style = 'italic' }
  end

  return plugins
end
-- }}}

return ayu

-- vim:fdm=marker
