local c = require'ayu.colors'

local Theme = {}

Theme.syntax = function ()
  local syntax = {
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
  }

  if vim.g.ayu_avoid_italics then
    syntax.Character      = { fg = c.markup }
    syntax.Comment        = { fg = c.comment }
    syntax.Conditional    = { fg = c.keyword }
    syntax.Function       = { fg = c.func }
    syntax.Identifier     = { fg = c.entity }
    syntax.Keyword        = { fg = c.keyword }
    syntax.Repeat         = { fg = c.keyword }
    syntax.SpecialChar    = { fg = c.keyword }
    syntax.SpecialComment = { fg = c.entity }
    syntax.String         = { fg = c.string }
    syntax.Todo           = { fg = c.markup,  style = 'bold' }
  else
    syntax.Character      = { fg = c.markup,  style = 'italic' }
    syntax.Comment        = { fg = c.comment, style = 'italic' }
    syntax.Conditional    = { fg = c.keyword, style = 'italic' }
    syntax.Function       = { fg = c.func,    style = 'italic' }
    syntax.Identifier     = { fg = c.entity,  style = 'italic' }
    syntax.Keyword        = { fg = c.keyword, style = 'italic' }
    syntax.Repeat         = { fg = c.keyword, style = 'italic' }
    syntax.SpecialChar    = { fg = c.keyword, style = 'italic' }
    syntax.SpecialComment = { fg = c.entity,  style = 'italic' }
    syntax.String         = { fg = c.string,  style = 'italic' }
    syntax.Todo           = { fg = c.markup,  style = 'bold,italic' }
  end

  return syntax
end

Theme.languages = function()
  local html = {
    htmlLink = { fg = c.tag,      style = "underline" },
    htmlH1   = { fg = c.special,  style = "bold" },
    htmlH2   = { fg = c.accent,   style = "bold" },
    htmlH3   = { fg = c.string,   style = "bold" },
    htmlH4   = { fg = c.constant, style = "bold" },
    htmlH5   = { fg = c.keyword,  style = "bold" },
  }
  local markdown = {
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
  }
  return vim.tbl_extend('error',
    html,
    markdown
  )
end

Theme.editor = function ()
  return {
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
    FloatBorder       = { fg = c.panel_border, bg = c.bg },
    FoldColumn        = { bg = c.bg },
    Folded            = { fg = c.fg_idle, bg = c.panel_bg },
    IncSearch         = { fg = c.keyword, bg = c.ui },
    LineNr            = { fg = c.guide_normal },
    MatchParen        = { style = 'underline', sp = c.func },
    ModeMsg           = { fg = c.string },
    MoreMsg           = { fg = c.string },
    NonText           = { fg = c.guide_normal },
    Normal            = { fg = c.fg, bg = c.bg },
    NormalFloat       = { fg = c.fg,      bg = c.bg },
    Pmenu             = { fg = c.fg,      bg = c.selection_inactive },
    PmenuSbar         = { fg = c.accent,  bg = c.selection_inactive },
    PmenuSel          = { fg = c.accent,  bg = c.selection_inactive, style = 'reverse' },
    PmenuThumb        = { fg = c.fg,      bg = c.accent },
    Question          = { fg = c.string },
    QuickFixLine      = { fg = c.special, bg = c.guide_normal },
    Search            = { fg = c.bg,      bg = c.constant },
    SignColumn        = { fg = c.fg, bg = c.bg },
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
    VertSplit         = { fg = c.panel_border, bg = c.bg },
    Visual            = { bg = c.selection_inactive },
    VisualNOS         = { bg = c.selection },
    WarningMsg        = { fg = c.warning },
    WildMenu          = { fg = c.fg, bg = c.markup },
    healthError       = { fg = c.error },
    healthSuccess     = { fg = c.string },
    healthWarning     = { fg = c.warning },
    qfLineNr          = { fg = c.keyword },
  }
end

Theme.terminal = function ()
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

Theme.treesitter = function ()
  local treesitter = {
    TSAttribute          = { fg = c.accent },
    TSBoolean            = { fg = c.markup },
    TSConstBuiltin       = { fg = c.constant, style = 'italic' },
    TSConstMacro         = { fg = c.constant, style = 'bold' },
    TSConstant           = { fg = c.constant },
    TSConstructor        = { fg = c.entity },
    TSDanger             = { fg = c.error, style = 'standout' },
    TSEmphasis           = { fg = c.special, style = 'italic' },
    TSEnvironmentName    = { fg = c.entity, style = 'italic'  },
    TSEnvironment        = { fg = c.func },
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
    TSProperty           = { fg = c.fg, style = 'italic' },
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

  if vim.g.ayu_avoid_italics then
    treesitter.TSCharacter       = { fg = c.markup }
    treesitter.TSComment         = { fg = c.comment }
    treesitter.TSConditional     = { fg = c.keyword }
    treesitter.TSFuncBuiltin     = { fg = c.special }
    treesitter.TSFunction        = { fg = c.func }
    treesitter.TSKeyword         = { fg = c.keyword, style = 'bold' }
    treesitter.TSKeywordFunction = { fg = c.func }
    treesitter.TSMethod          = { fg = c.func }
    treesitter.TSRepeat          = { fg = c.keyword }
    treesitter.TSString          = { fg = c.string }
    treesitter.TSStringEscape    = { fg = c.fg }
    treesitter.TSStringRegex     = { fg = c.func }
    treesitter.TSStringSpecial   = { fg = c.string, style = 'bold' }
    treesitter.TSVariable        = { fg = c.entity }
    treesitter.TSVariableBuiltin = { fg = c.entity }
  else
    treesitter.TSCharacter       = { fg = c.markup, style = 'italic' }
    treesitter.TSComment         = { fg = c.comment, style = 'italic' }
    treesitter.TSConditional     = { fg = c.keyword, style = 'italic' }
    treesitter.TSFuncBuiltin     = { fg = c.special, style = 'italic' }
    treesitter.TSFunction        = { fg = c.func,    style = 'italic' }
    treesitter.TSKeyword         = { fg = c.keyword, style = 'bold,italic' }
    treesitter.TSKeywordFunction = { fg = c.func,    style = 'italic' }
    treesitter.TSMethod          = { fg = c.func,    style = 'italic' }
    treesitter.TSRepeat          = { fg = c.keyword, style = 'italic' }
    treesitter.TSString          = { fg = c.string, style = 'italic' }
    treesitter.TSStringEscape    = { fg = c.fg,     style = 'italic' }
    treesitter.TSStringRegex     = { fg = c.func,   style = 'italic' }
    treesitter.TSStringSpecial   = { fg = c.string, style = 'bold,italic' }
    treesitter.TSVariable        = { fg = c.entity, style = 'italic' }
    treesitter.TSVariableBuiltin = { fg = c.entity, style = 'italic' }
  end

  return treesitter
end

Theme.lsp = function ()
  return {
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
end

Theme.plugins = function()
  local bufferline = {
    BufferLineIndicatorSelected = { fg = c.accent },
    BufferLineFill              = { bg = c.bg },
  }
  local gitsigns = {
    GitSignsAdd      = { fg = c.vcs_added },
    GitSignsAddNr    = { fg = c.vcs_added },
    GitSignsAddLn    = { fg = c.vcs_added },
    GitSignsChange   = { fg = c.vcs_modified },
    GitSignsChangeNr = { fg = c.vcs_modified },
    GitSignsChangeLn = { fg = c.vcs_modified },
    GitSignsDelete   = { fg = c.vcs_removed },
    GitSignsDeleteNr = { fg = c.vcs_removed },
    GitSignsDeleteLn = { fg = c.vcs_removed },
  }
  local indentblankline = {
    IndentBlanklineChar               = { fg = c.guide_active },
    IndentBlanklineContextChar        = { fg = c.guide_active },
    IndentBlanklineSpaceChar          = { fg = c.guide_active },
    IndentBlanklineSpaceCharBlankline = { fg = c.guide_active },
  }
  local nvimtree = {
    NvimTreeEmptyFolderName  = { fg = c.fg },
    NvimTreeExecFile         = { fg = c.fg },
    NvimTreeFolderIcon       = { fg = c.accent },
    NvimTreeFolderName       = { fg = c.special },
    NvimTreeImageFile        = { fg = c.constant },
    NvimTreeIndentMarker     = { fg = c.guide_normal },
    NvimTreeMarkdownFile     = { fg = c.error, style = 'italic' },
    NvimTreeNormal           = { fg = c.fg,     bg = c.bg },
    NvimTreeOpenedFile       = { fg = c.entity, style = 'italic' },
    NvimTreeOpenedFolderName = { fg = c.entity },
    NvimTreeRootFolder       = { fg = c.keyword, style = 'bold,italic' },
    NvimTreeSpecialFile      = { fg = c.special },
    NvimTreeSymlink          = { fg = c.tag },
    NvimTreeWindowPicker     = { fg = c.constant, bg = c.panel_border, style = 'bold' },

    NvimTreeGitDeleted  = { fg = c.vcs_removed },
    NvimTreeGitDirty    = { fg = c.accent },
    NvimTreeGitMerge    = { fg = c.error },
    NvimTreeGitNew      = { fg = c.vcs_added },
    NvimTreeGitRenamed  = { fg = c.vcs_added, style = 'italic' },
    NvimTreeGitStaged   = { fg = c.vcs_modified },
    NvimTreeFileDeleted = { fg = c.vcs_removed },
    NvimTreeFileDirty   = { fg = c.accent },
    NvimTreeFileMerge   = { fg = c.error },
    NvimTreeFileNew     = { fg = c.vcs_added },
    NvimTreeFileRenamed = { fg = c.vcs_added, style = 'italic' },
    NvimTreeFileStaged  = { fg = c.vcs_modified },
  }
  local packer = {
    packerBool             = { fg = c.markup },
    packerFail             = { fg = c.error },
    packerHash             = { fg = c.vcs_added },
    packerOutput           = { fg = c.fg },
    packerPackageName      = { fg = c.entity },
    packerPackageNotLoaded = { fg = c.keyword },
    packerProgress         = { fg = c.constant },
    packerRelDate          = { fg = c.constant },
    packerStatus           = { fg = c.entity },
    packerStatusCommit     = { fg = c.vcs_added },
    packerStatusFail       = { fg = c.error },
    packerStatusSuccess    = { fg = c.tag },
    packerString           = { fg = c.string, style = 'italic' },
    packerSuccess          = { fg = c.ui },
    packerTimeHigh         = { fg = c.selection_bg },
    packerTimeLow          = { fg = c.selection_border },
    packerTimeMedium       = { fg = c.selection_inactive },
    packerTrivial          = { fg = c.warning },
    packerWorking          = { fg = c.fg_idle },
  }
  local startify = {
    StartifyBracket = { fg = c.fg_idle },
    StartifyFile    = { fg = c.tag,           style = 'bold' },
    StartifyFooter  = { fg = c.operator },
    StartifyHeader  = { fg = c.operator },
    StartifyNumber  = { fg = c.markup },
    StartifyPath    = { fg = c.gutter_active, style = 'italic' },
    StartifySection = { fg = c.accent },
    StartifySelect  = { fg = c.fg,            style = 'bold' },
    StartifySlash   = { fg = c.fg_idle,       style = 'italic' },
    StartifySpecial = { fg = c.keyword },
    StartifyVar     = { fg = c.constant },
  }
  local termdebug = {
    debugPC         = { fg = c.none,          bg = c.guide_active },
    debugBreakpoint = { fg = c.gutter_normal, bg = c.accent },
  }

  return vim.tbl_extend('error',
    bufferline,
    gitsigns,
    indentblankline,
    nvimtree,
    packer,
    startify,
    termdebug
  )
end

return Theme
