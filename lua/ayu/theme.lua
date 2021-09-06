local c = require'ayu.colors'

local ayu = {}

-- SYNTAX: {{{1
ayu.define_syntax = function ()
  -- Fixed: {{{2
  local syntax = {
    -- Basics {{{3
    Boolean             = { fg = c.markup },
    Constant            = { fg = c.constant },
    Debug               = { fg = c.accent },
    Define              = { fg = c.keyword },
    Delimiter           = { fg = c.special },
    Error               = { fg = c.error, sp = 'underline' },
    Exception           = { fg = c.markup },
    Float               = { fg = c.markup },
    Ignore              = { fg = c.fg },
    Include             = { fg = c.func },
    Label               = { fg = c.keyword },
    Macro               = { fg = c.special },
    Number              = { fg = c.markup },
    Operator            = { fg = c.operator },
    PreCondit           = { fg = c.special },
    PreProc             = { fg = c.accent },
    Special             = { fg = c.accent },
    Statement           = { fg = c.keyword },
    StorageClass        = { fg = c.special },
    Structure           = { fg = c.special },
    Tag                 = { fg = c.accent },
    Type                = { fg = c.entity },
    Typedef             = { fg = c.accent },
    Underlined          = { fg = c.tag, style = 'underline', sp = c.tag },
    -- }}}

    -- Languages {{{3
    htmlLink            = { fg = c.tag,      style = "underline" },
    htmlH1              = { fg = c.special,  style = "bold" },
    htmlH2              = { fg = c.accent,   style = "bold" },
    htmlH3              = { fg = c.string,   style = "bold" },
    htmlH4              = { fg = c.constant, style = "bold" },
    htmlH5              = { fg = c.keyword,  style = "bold" },

    markdownH1          = { fg = c.special,  style = "bold,italic" },
    markdownH2          = { fg = c.accent,   style = "bold" },
    markdownH3          = { fg = c.string,   style = "bold" },
    markdownH4          = { fg = c.tag,      style = "bold" },
    markdownCode        = { bg = c.panel_bg, style = "italic" },
    markdownCodeBlock   = { bg = c.panel_bg, style = "italic" },
    markdownH1Delimiter = { fg = c.special },
    markdownH2Delimiter = { fg = c.accent },
    markdownH3Delimiter = { fg = c.string },
    markdownH4Delimiter = { fg = c.tag },
    -- }}}
  }
  -- }}}

  -- Options: {{{2
  -- Italicize comments {{{3
  if vim.g.ayu_italics_comments then
    syntax.Comment        = { fg = c.comment, style = 'italic' }
    syntax.SpecialComment = { fg = c.entity,  style = 'italic' }
    syntax.Todo           = { fg = c.markup,  style = 'bold,italic' }
  else
    syntax.Comment        = { fg = c.comment }
    syntax.SpecialComment = { fg = c.entity }
    syntax.Todo           = { fg = c.markup,  style = 'bold' }
  end
  -- }}}
  -- Italicize string and characters {{{3
  if vim.g.ayu_italics_strings then
    syntax.String      = { fg = c.string,  style = 'italic' }
    syntax.Character   = { fg = c.markup,  style = 'italic' }
    syntax.SpecialChar = { fg = c.keyword, style = 'italic' }
  else
    syntax.String      = { fg = c.string }
    syntax.Character   = { fg = c.markup }
    syntax.SpecialChar = { fg = c.keyword }
  end
  -- }}}
  -- Italicize keywords {{{3
  if vim.g.ayu_italics_keywords then
    syntax.Conditional = { fg = c.keyword, style = 'italic' }
    syntax.Keyword     = { fg = c.keyword, style = 'italic' }
    syntax.Repeat      = { fg = c.keyword, style = 'italic' }
  else
    syntax.Conditional = { fg = c.keyword }
    syntax.Keyword     = { fg = c.keyword }
    syntax.Repeat      = { fg = c.keyword }
  end
  -- }}}
  -- Italicize functions {{{3
  if vim.g.ayu_italics_functions then
    syntax.Function = { fg = c.func, style = 'italic' }
  else
    syntax.Function = { fg = c.func }
  end
  -- }}}
  -- Italicize variables {{{3
  if vim.g.ayu_italics_variables then
    syntax.Identifier = { fg = c.entity, style = 'italic' }
  else
    syntax.Identifier = { fg = c.entity }
  end
  -- }}}
  -- }}}

  return syntax
end
-- }}}

-- EDITOR: {{{1
ayu.define_editor = function ()
  -- Fixed: {{{2
  local editor = {
    ColorColumn       = { bg = c.line },
    Conceal           = { fg = c.comment },
    CursorColumn      = { bg = c.line },
    CursorLine        = { bg = c.line },
    CursorLineConceal = { fg = c.guide_normal, bg = c.line },
    CursorLineNr      = { fg = c.accent, bg = c.line },
    DiffAdd           = { bg = c.vcs_added_bg },
    DiffAdded         = { fg = c.vcs_added },
    DiffChange        = { bg = c.vcs_modified_bg },
    DiffDelete        = { bg = c.vcs_removed_bg },
    DiffRemoved       = { fg = c.vcs_removed },
    DiffText          = { bg = c.vcs_diff_text },
    Directory         = { fg = c.func },
    ErrorMsg          = { fg = c.white, bg = c.error, style = 'standout' },
    FoldColumn        = { bg = c.bg },
    Folded            = { fg = c.fg_idle, bg = c.panel_bg },
    IncSearch         = { fg = c.keyword, bg = c.ui },
    LineNr            = { fg = c.guide_normal },
    MatchParen        = { style = 'underline', sp = c.func },
    ModeMsg           = { fg = c.string },
    MoreMsg           = { fg = c.string },
    NonText           = { fg = c.guide_normal },
    NormalFloat       = { fg = c.fg,      bg = c.float },
    Pmenu             = { fg = c.fg,      bg = c.selection_inactive },
    PmenuSbar         = { fg = c.accent,  bg = c.selection_inactive },
    PmenuSel          = { fg = c.accent,  bg = c.selection_inactive, style = 'reverse' },
    PmenuThumb        = { fg = c.fg,      bg = c.accent },
    Question          = { fg = c.string },
    QuickFixLine      = { fg = c.special, bg = c.guide_normal },
    Search            = { fg = c.bg,      bg = c.constant },
    SpecialKey        = { fg = c.selection_inactive },
    SpellBad          = { style = 'undercurl', sp = c.error },
    SpellCap          = { style = 'undercurl', sp = c.tag },
    SpellLocal        = { style = 'undercurl', sp = c.keyword },
    SpellRare         = { style = 'undercurl', sp = c.regexp },
    StatusLine        = { fg = c.fg,      bg = c.panel_bg },
    StatusLineNC      = { fg = c.fg_idle, bg = c.panel_bg },
    StatusLineTerm    = { fg = c.fg,      bg = c.panel_bg },
    StatusLineTermNC  = { fg = c.fg_idle, bg = c.panel_bg },
    TabLine           = { fg = c.comment, bg = c.panel_shadow },
    TabLineFill       = { fg = c.fg,      bg = c.panel_border },
    TabLineSel        = { fg = c.fg,      bg = c.bg },
    Title             = { fg = c.keyword },
    Visual            = { bg = c.selection_inactive },
    VisualNOS         = { bg = c.selection },
    WarningMsg        = { fg = c.warning },
    WildMenu          = { fg = c.fg, bg = c.markup },
    healthError       = { fg = c.error },
    healthSuccess     = { fg = c.string },
    healthWarning     = { fg = c.warning },
    qfLineNr          = { fg = c.keyword },
  }
  -- }}}

  -- Options: {{{2
  --Set transparent background
  if vim.g.ayu_disable_bg then
    editor.Normal     = { fg = c.fg, bg = c.none }
    editor.SignColumn = { fg = c.fg, bg = c.none }
  else
    editor.Normal     = { fg = c.fg, bg = c.bg }
    editor.SignColumn = { fg = c.fg, bg = c.bg }
  end
  -- Remove window split borders
  if vim.g.ayu_borders then
    editor.VertSplit = { fg = c.panel_border, bg = c.bg }
  else
    editor.VertSplit = { fg = c.bg, bg = c.none }
  end
  -- }}}

  return editor
end
-- }}}

-- TERMINAL: {{{1
ayu.define_terminal = function ()
  vim.g.terminal_color_0  = c.bg
  vim.g.terminal_color_1  = c.markup
  vim.g.terminal_color_2  = c.string
  vim.g.terminal_color_3  = c.accent
  vim.g.terminal_color_4  = c.tag
  vim.g.terminal_color_5  = c.constant
  vim.g.terminal_color_6  = c.regexp
  vim.g.terminal_color_7  = c.black
  vim.g.terminal_color_8  = c.fg_idle
  vim.g.terminal_color_9  = c.error
  vim.g.terminal_color_10 = c.string
  vim.g.terminal_color_11 = c.accent
  vim.g.terminal_color_12 = c.tag
  vim.g.terminal_color_13 = c.constant
  vim.g.terminal_color_14 = c.regexp
  vim.g.terminal_color_15 = c.comment
end
-- }}}

-- TREESITTER: {{{1
ayu.define_treeSitter = function ()
  -- Fixed: {{{2
  local treesitter = {
    TSAnnotation         = { fg = c.markup },
    TSAttribute          = { fg = c.accent },
    TSBoolean            = { fg = c.markup },
    TSConstBuiltin       = { fg = c.entity },
    TSConstMacro         = { fg = c.func },
    TSConstant           = { fg = c.constant },
    TSConstructor        = { fg = c.entity },
    TSDanger             = { fg = c.error, style = 'standout' },
    TSEmphasis           = { fg = c.special, style = 'italic' },
    TSEnvironmentName    = { fg = c.keyword },
    TSEnvironment        = { fg = c.special, style = 'italic' },
    TSError              = { fg = c.error },
    TSException          = { fg = c.constant },
    TSField              = { fg = c.entity },
    TSFloat              = { fg = c.accent },
    TSFuncMacro          = { fg = c.entity },
    TSInclude            = { fg = c.special, style = 'bold,italic' },
    TSKeywordOperator    = { fg = c.regexp },
    TSKeywordReturn      = { fg = c.entity, style = 'bold,italic' },
    TSLabel              = { fg = c.accent, style = 'italic' },
    TSLiteral            = { fg = c.fg },
    TSMath               = { fg = c.operator },
    TSNamespace          = { fg = c.constant },
    TSNone               = { fg = c.fg },
    TSNote               = { fg = c.comment },
    TSNumber             = { fg = c.markup },
    TSOperator           = { fg = c.special },
    TSParameter          = { fg = c.tag, style = 'italic' },
    TSParameterReference = { fg = c.tag },
    TSProperty           = { fg = c.tag },
    TSPunctBracket       = { fg = c.special },
    TSPunctDelimiter     = { fg = c.special },
    TSPunctSpecial       = { fg = c.special },
    TSStrike             = { fg = c.fg, style = 'strikethrough' },
    TSStrong             = { fg = c.fg,  style = 'bold' },
    TSSymbol             = { fg = c.constant },
    TSTag                = { fg = c.accent },
    TSTagDelimiter       = { fg = c.constant },
    TSText               = { fg = c.fg },
    TSTextReference      = { fg = c.constant },
    TSTitle              = { fg = c.ui, style = 'bold' },
    TSType               = { fg = c.keyword },
    TSTypeBuiltin        = { fg = c.keyword },
    TSURI                = { fg = c.tag },
    TSUnderline          = { sp = c.tag, style = 'underline' },
    TSWarning            = { fg = c.warning },
  }
  -- }}}

  -- Options: {{{2
  -- Italicize comments {{{3
  if vim.g.ayu_italics_comments then
    treesitter.TSComment = { fg = c.comment, style = 'italic' }
  else
    treesitter.TSComment = { fg = c.comment }
  end
  -- }}}
  -- Italicize string and characters {{{3
  if vim.g.ayu_italics_strings then
    treesitter.TSCharacter    = { fg = c.markup, style = 'italic' }
    treesitter.TSString       = { fg = c.string, style = 'italic' }
    treesitter.TSStringEscape = { fg = c.fg,     style = 'italic' }
    treesitter.TSStringRegex  = { fg = c.func,   style = 'italic' }
  else
    treesitter.TSCharacter    = { fg = c.markup }
    treesitter.TSString       = { fg = c.string }
    treesitter.TSStringEscape = { fg = c.fg }
    treesitter.TSStringRegex  = { fg = c.func }
  end
  -- }}}
  -- Italicize keywords {{{3
  if vim.g.ayu_italics_keywords then
    treesitter.TSConditional     = { fg = c.keyword, style = 'italic' }
    treesitter.TSKeyword         = { fg = c.keyword, style = 'bold,italic' }
    treesitter.TSKeywordFunction = { fg = c.func,    style = 'italic' }
    treesitter.TSRepeat          = { fg = c.keyword, style = 'italic' }
  else
    treesitter.TSConditional     = { fg = c.keyword }
    treesitter.TSKeyword         = { fg = c.keyword, style = 'bold' }
    treesitter.TSKeywordFunction = { fg = c.func }
    treesitter.TSRepeat          = { fg = c.keyword }
  end

  -- }}}
  -- Italicize functions {{{3
  if vim.g.ayu_italics_functions then
    treesitter.TSFuncBuiltin = { fg = c.special, style = 'italic' }
    treesitter.TSFunction    = { fg = c.func,    style = 'italic' }
    treesitter.TSMethod      = { fg = c.func,    style = 'italic' }
  else
    treesitter.TSFuncBuiltin = { fg = c.special }
    treesitter.TSFunction    = { fg = c.func }
    treesitter.TSMethod      = { fg = c.func }
  end
  -- }}}
  -- Italicize variables {{{3
  if vim.g.ayu_italics_variables then
    treesitter.TSVariable        = { fg = c.operator, style = 'italic' }
    treesitter.TSVariableBuiltin = { fg = c.operator, style = 'italic' }
  else
    treesitter.TSVariable        = { fg = c.operator }
    treesitter.TSVariableBuiltin = { fg = c.operator }
  end
  -- }}}
  -- }}}

  return treesitter
end
-- }}}

-- LSP: {{{1
ayu.define_LSP = function ()
  local lsp = {
    LspCodeLens                          = { fg = c.comment },
    LspDiagnosticsDefaultError           = { fg = c.error },
    LspDiagnosticsDefaultHint            = { fg = c.regexp  },
    LspDiagnosticsDefaultInformation     = { fg = c.tag },
    LspDiagnosticsDefaultWarning         = { fg = c.keyword },
    LspDiagnosticsError                  = { fg = c.error },
    LspDiagnosticsFloatingError          = { fg = c.error },
    LspDiagnosticsFloatingHint           = { fg = c.regexp  },
    LspDiagnosticsFloatingInformation    = { fg = c.tag },
    LspDiagnosticsFloatingWarning        = { fg = c.keyword },
    LspDiagnosticsHint                   = { fg = c.keyword },
    LspDiagnosticsInformation            = { fg = c.tag },
    LspDiagnosticsSignError              = { fg = c.error },
    LspDiagnosticsSignHint               = { fg = c.regexp  },
    LspDiagnosticsSignInformation        = { fg = c.tag },
    LspDiagnosticsSignWarning            = { fg = c.keyword },
    LspDiagnosticsUnderlineError         = { style = 'undercurl', sp = c.error },
    LspDiagnosticsUnderlineHint          = { style = 'undercurl', sp = c.regexp },
    LspDiagnosticsUnderlineInformation   = { style = 'undercurl', sp = c.tag },
    LspDiagnosticsUnderlineWarning       = { style = 'undercurl', sp = c.keyword },
    LspDiagnosticsVirtualTextError       = { fg = c.error },
    LspDiagnosticsVirtualTextHint        = { fg = c.regexp },
    LspDiagnosticsVirtualTextInformation = { fg = c.tag },
    LspDiagnosticsVirtualTextWarning     = { fg = c.keyword },
    LspDiagnosticsWarning                = { fg = c.regexp },
    LspReferenceRead                     = { fg = c.accent, bg = c.panel_bg },
    LspReferenceText                     = { fg = c.accent, bg = c.panel_bg },
    LspReferenceWrite                    = { fg = c.accent, bg = c.panel_bg },
  }

  return lsp
end
-- }}}

-- PLUGINS: {{{1
ayu.define_plugins = function()
  local plugins = {
    -- BUFFERLINE: {{{2
    BufferLineIndicatorSelected = { fg = c.accent },
    BufferLineFill              = { bg = c.sidebar },
    -- }}}
    -- CURSORWORD: {{{2
    CursorWord  = { bg = c.selection_inactive },
    CursorWord0 = { bg = c.selection_inactive },
    CursorWord1 = { bg = c.selection_inactive },
    -- }}}
    -- COC: {{{2
    CocCodeLens           = {fg = c.comment },
    CocDiagnosticsError   = {fg = c.error },
    CocDiagnosticsHint    = {fg = c.blue },
    CocDiagnosticsInfo    = {fg = c.tag },
    CocDiagnosticsWarning = {fg = c.orange },
    CocErrorFloat         = {fg = c.error },
    CocErrorHighlight     = {fg = c.none, bg = c.none, style = 'undercurl', sp = c.error },
    CocErrorSign          = {fg = c.error },
    CocHintFloat          = {fg = c.regexp },
    CocHintHighlight      = {fg = c.none, bg = c.none, style = 'undercurl', sp = c.regexp },
    CocHintSign           = {fg = c.regexp },
    CocInfoFloat          = {fg = c.tag },
    CocInfoHighlight      = {fg = c.none, bg = c.none, style = 'undercurl', sp = c.tag },
    CocInfoSign           = {fg = c.tag },
    CocSelectedText       = {fg = c.red },
    CocWarningFloat       = {fg = c.warning },
    CocWarningHighlight   = {fg = c.none, bg = c.none, style = 'undercurl', sp = c.warning },
    CocWarningSign        = {fg = c.warning },
    -- }}}
    -- DIFF: {{{2
    diffAdded     = { fg = c.vcs_added },
    diffChanged   = { fg = c.vcs_modified },
    diffFile      = { fg = c.guide_active },
    diffIndexLine = { fg = c.keyword },
    diffLine      = { fg = c.vcs_diff_text },
    diffNewFile   = { fg = c.ui },
    diffOldFile   = { fg = c.guide_normal },
    diffRemoved   = { fg = c.vcs_removed },
    -- }}}
    -- GITGUTTER: {{{2
    -- GitGutterAdd    = { fg = c.string },
    -- GitGutterChange = { fg = c.func },
    -- GitGutterDelete = { fg = c.accent },
    -- }}}
    -- GITSIGNS: {{{2
    GitSignsAdd      = { fg = c.vcs_added },
    GitSignsAddNr    = { fg = c.vcs_added },
    GitSignsAddLn    = { fg = c.vcs_added },
    GitSignsChange   = { fg = c.vcs_modified },
    GitSignsChangeNr = { fg = c.vcs_modified },
    GitSignsChangeLn = { fg = c.vcs_modified },
    GitSignsDelete   = { fg = c.vcs_removed },
    GitSignsDeleteNr = { fg = c.vcs_removed },
    GitSignsDeleteLn = { fg = c.vcs_removed },
    -- }}}
    -- Hop {{{2
    HopNextKey   = { fg = c.keyword, sp = c.keyword, style = 'bold,underline' },
    HopNextKey1  = { fg = c.entity, sp = c.tag, style = 'bold,underline' },
    HopNextKey2  = { fg = c.tag },
    HopUnmatched = { fg = c.comment },
    -- }}}
    -- INDENTBLANKLINE: {{{2
    IndentBlanklineChar        = { fg = c.guide_active },
    IndentBlanklineContextChar = { fg = c.guide_active },
    -- }}}
    -- LSPSAGA: {{{2
    -- DiagnosticError            = { fg = c.error },
    -- DiagnosticWarning          = { fg = c.constant },
    -- DiagnosticInformation      = { fg = c.tag },
    -- DiagnosticHint             = { fg = c.keyword },
    -- DiagnosticTruncateLine     = { fg = c.fg },
    -- LspFloatWinNormal          = { bg = c.selection_inactive },
    -- LspFloatWinBorder          = { fg = c.keyword },
    -- LspSagaBorderTitle         = { fg = c.special },
    -- LspSagaHoverBorder         = { fg = c.tag },
    -- LspSagaRenameBorder        = { fg = c.string },
    -- LspSagaDefPreviewBorder    = { fg = c.string },
    -- LspSagaCodeActionBorder    = { fg = c.func },
    -- LspSagaFinderSelection     = { fg = c.string },
    -- LspSagaCodeActionTitle     = { fg = c.tag },
    -- LspSagaCodeActionContent   = { fg = c.keyword },
    -- LspSagaSignatureHelpBorder = { fg = c.keyword },
    -- ReferencesCount            = { fg = c.keyword },
    -- DefinitionCount            = { fg = c.keyword },
    -- DefinitionIcon             = { fg = c.func },
    -- ReferencesIcon             = { fg = c.func },
    -- TargetWord                 = { fg = c.special },
    -- }}}
    -- LSPTROUBLE: {{{2
    -- LspTroubleText   = { fg = c.text },
    -- LspTroubleCount  = { fg = c.keyword, bg = c.line },
    -- LspTroubleNormal = { fg = c.fg, bg = c.sidebar },
    -- }}}
    -- NEOGIT: {{{2
    -- NeogitBranch               = { fg = c.tag },
    NeogitDiffAddHighlight     = { fg = c.vcs_added_bg },
    NeogitDiffContextHighlight = { bg = c.line },
    NeogitDiffDeleteHighlight  = { bg = c.vcs_removed_bg },
    NeogitHunkHeader           = { fg = c.tag },
    NeogitHunkHeaderHighlight  = { fg = c.tag, bg = c.line },
    -- NeogitRemote               = { fg = c.keyword },
    -- }}}
    -- NVIMDAP: {{{2
    -- DapBreakpoint = { fg = c.accent },
    -- DapStopped    = { fg = c.string },
    -- }}}
    -- NVIMTREE: {{{2
    NvimTreeEmptyFolderName  = { fg = c.fg },
    NvimTreeExecFile         = { fg = c.fg },
    NvimTreeFolderIcon       = { fg = c.accent },
    NvimTreeFolderName       = { fg = c.special },
    NvimTreeGitDeleted       = { fg = c.vcs_removed },
    NvimTreeGitDirty         = { fg = c.accent },
    NvimTreeGitMerge         = { fg = c.error },
    NvimTreeGitNew           = { fg = c.vcs_added },
    NvimTreeGitStaged        = { fg = c.vcs_modified },
    NvimTreeImageFile        = { fg = c.constant },
    NvimTreeIndentMarker     = { fg = c.guide_normal },
    NvimTreeOpenedFolderName = { fg = c.special },
    NvimTreeRootFolder       = { fg = c.keyword },
    NvimTreeSpecialFile      = { fg = c.fg },
    NvimTreeWindowPicker     = { fg = c.keyword, bg = c.panel_border, style = 'bold' },
    -- }}}
    -- PACKER: {{{2
    packerBool             = { fg = c.markup,             bg = c.none },
    packerFail             = { fg = c.error,              bg = c.none },
    packerHash             = { fg = c.vcs_added,          bg = c.none },
    packerOutput           = { fg = c.fg,                 bg = c.none },
    packerPackageName      = { fg = c.entity,             bg = c.none },
    packerPackageNotLoaded = { fg = c.keyword,            bg = c.none },
    packerProgress         = { fg = c.constant,           bg = c.none },
    packerRelDate          = { fg = c.constant,           bg = c.none },
    packerStatus           = { fg = c.entity,             bg = c.none },
    packerStatusCommit     = { fg = c.vcs_added,          bg = c.none },
    packerStatusFail       = { fg = c.vcs_removed,        bg = c.none },
    packerStatusSuccess    = { fg = c.vcs_diff_text,      bg = c.none },
    packerString           = { fg = c.string,             bg = c.none, style = 'italic' },
    packerSuccess          = { fg = c.ui,                 bg = c.none },
    packerTimeHigh         = { fg = c.selection_bg,       bg = c.none },
    packerTimeLow          = { fg = c.selection_border,   bg = c.none },
    packerTimeMedium       = { fg = c.selection_inactive, bg = c.none },
    packerTrivial          = { fg = c.warning,            bg = c.none },
    packerWorking          = { fg = c.fg_idle,            bg = c.none },
    -- }}}
    -- SNEAK: {{{2
    -- Sneak      = { fg = c.bg, bg = c.accent },
    -- SneakScope = { bg = c.selection },
    -- }}}
    -- STARTIFY: {{{2
    StartifyNumber = { fg = c.comment },
    StartifyBracket = { fg = c.comment },
    StartifySection = { fg = c.accent },
    -- }}}
    -- TELESCOPE: {{{2
    TelescopeNormal         = { fg = c.fg, bg = c.float },
    TelescopePromptBorder   = { fg = c.accent },
    TelescopeResultsBorder  = { fg = c.keyword },
    TelescopePreviewBorder  = { fg = c.string },
    TelescopeSelectionCaret = { fg = c.keyword },
    TelescopeSelection      = { fg = c.keyword, bg = c.line },
    TelescopeMatching       = { fg = c.special },
    -- }}}
    -- WHICHKEY: {{{2
    WhichKey          = { fg = c.accent , style = 'bold'},
    WhichKeyGroup     = { fg = c.entity },
    WhichKeyDesc      = { fg = c.func, style = 'italic' },
    WhichKeySeparator = { fg = c.fg },
    WhichKeyFloating  = { bg = c.float },
    WhichKeyFloat     = { bg = c.float },
    -- }}}
  }

  --Set transparent background
  if vim.g.ayu_disable_bg then
    plugins.NvimTreeNormal = { fg = c.fg,     bg = c.sidebar }
    plugins.StartifyFile   = { fg = c.fg,     bg = c.none }
    plugins.StartifyFooter = { fg = c.fg,     bg = c.none }
    plugins.StartifySlash  = { fg = c.fg,     bg = c.none }
    plugins.StartifyPath   = { fg = c.entity, bg = c.none, style = 'italic' }
  else
    plugins.NvimTreeNormal = { fg = c.fg,     bg = c.sidebar }
    plugins.StartifyFile   = { fg = c.fg,     bg = c.bg }
    plugins.StartifyFooter = { fg = c.fg,     bg = c.bg }
    plugins.StartifySlash  = { fg = c.fg,     bg = c.bg }
    plugins.StartifyPath   = { fg = c.entity, bg = c.bg, style = 'italic' }
  end

  return plugins
end
-- }}}

return ayu

-- vim:fdm=marker
