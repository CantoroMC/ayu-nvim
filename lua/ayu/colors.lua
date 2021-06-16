local utils = require'ayu.utils'

local colors = {
  white = '#ffffff',
  black = '#000000',
  none  = 'NONE',
}

-- VARIANTS: mirage, dark and light {{{1
if vim.o.background == 'dark' then
  if vim.g.ayu_mirage then
    -- MIRAGE: {{{2
    -- basics
    colors.accent             = '#ffcc66'
    colors.bg                 = '#212733'
    colors.fg                 = '#d9d7ce'
    colors.fg_idle            = '#607080'
    -- editor
    colors.comment            = '#5c6773'
    colors.constant           = '#d4bfff'
    colors.entity             = '#73d0ff'
    colors.error              = '#ff3333'
    colors.func               = '#ffd57f'
    colors.keyword            = '#ffae57'
    colors.line               = '#242b38'
    colors.markup             = '#f07178'
    colors.operator           = '#80d4ff'
    colors.regexp             = '#95e6cb'
    colors.special            = '#ffc44c'
    colors.string             = '#bbe67e'
    colors.tag                = '#5ccfe6'
    colors.ui                 = '#707a8c'
    colors.warning            = '#ffa759'
    -- gui
    colors.guide_active       = '#576070'
    colors.guide_normal       = '#3d4751'
    colors.gutter_active      = '#5f687a'
    colors.gutter_normal      = '#404755'
    colors.panel_bg           = '#272d38'
    colors.panel_border       = '#101521'
    colors.panel_shadow       = '#141925'
    colors.selection_bg       = '#33415e'
    colors.selection_border   = '#232a4c'
    colors.selection_inactive = '#343f4c'
    -- vcs
    colors.vcs_added          = '#a6cc70'
    colors.vcs_added_bg       = '#313d37'
    colors.vcs_diff_text      = '#465742'
    colors.vcs_modified       = '#77a8d9'
    colors.vcs_modified_bg    = '#323a4c'
    colors.vcs_removed        = '#f27983'
    colors.vcs_removed_bg     = '#3e373a'
    -- }}}
  else
    -- DARK: {{{2
    -- basics
    colors.accent             = '#f29718'
    colors.bg                 = '#0f1419'
    colors.fg                 = '#e6e1cf'
    colors.fg_idle            = '#3e4b59'
    -- editor
    colors.comment            = '#5c6773'
    colors.constant           = '#ffee99'
    colors.entity             = '#59c2ff'
    colors.error              = '#ff3333'
    colors.func               = '#ffb454'
    colors.keyword            = '#ff7733'
    colors.line               = '#151a1e'
    colors.markup             = '#f07178'
    colors.operator           = '#e7c547'
    colors.regexp             = '#95e6cb'
    colors.special            = '#e6b673'
    colors.string             = '#b8cc52'
    colors.tag                = '#36a3d9'
    colors.ui                 = '#4d5566'
    colors.warning            = '#ff8f40'
    -- gui
    colors.guide_active       = '#393f4d'
    colors.guide_normal       = '#2d3640'
    colors.gutter_active      = '#464d5e'
    colors.gutter_normal      = '#323945'
    colors.panel_bg           = '#14191f'
    colors.panel_border       = '#000000'
    colors.panel_shadow       = '#00010a'
    colors.selection_bg       = '#273747'
    colors.selection_border   = '#304357'
    colors.selection_inactive = '#253340'
    -- vcs
    colors.vcs_added          = '#91b362'
    colors.vcs_added_bg       = '#1d2214'
    colors.vcs_diff_text      = '#363e1c'
    colors.vcs_modified       = '#6994bf'
    colors.vcs_modified_bg    = '#1b2733'
    colors.vcs_removed        = '#d96c75'
    colors.vcs_removed_bg     = '#2d2220'
    -- }}}
  end
else
  -- LIGHT: {{{2
  -- basics
  colors.accent             = '#ff6a00'
  colors.bg                 = '#fafafa'
  colors.fg                 = '#5c6773'
  colors.fg_idle            = '#828c99'
  -- editor
  colors.comment            = '#abb0b6'
  colors.constant           = '#a37acc'
  colors.entity             = '#399ee6'
  colors.error              = '#ff3333'
  colors.func               = '#f29718'
  colors.keyword            = '#ff7733'
  colors.line               = '#f3f3f3'
  colors.markup             = '#f07178'
  colors.operator           = '#e7c547'
  colors.regexp             = '#4cbf99'
  colors.special            = '#e6b673'
  colors.string             = '#86b300'
  colors.tag                = '#36a3d9'
  colors.ui                 = '#8a9199'
  colors.warning            = '#fa8d3e'
  -- gui
  colors.guide_active       = '#d3d5d8'
  colors.guide_normal       = '#d9d8d7'
  colors.gutter_active      = '#a0a6ac'
  colors.gutter_normal      = '#cdd0d3'
  colors.panel_bg           = '#ffffff'
  colors.panel_border       = '#f0f0f0'
  colors.panel_shadow       = '#ccced0'
  colors.selection_bg       = '#d1e4f4'
  colors.selection_border   = '#e1e1e2'
  colors.selection_inactive = '#f0eee4'
  -- vcs
  colors.vcs_added          = '#99bf4d'
  colors.vcs_added_bg       = '#e0e7cd'
  colors.vcs_diff_text      = '#d3e0af'
  colors.vcs_modified       = '#709ecc'
  colors.vcs_modified_bg    = '#e7e8e9'
  colors.vcs_removed        = '#f27983'
  colors.vcs_removed_bg     = '#f9ebe4'
  -- }}}
end
-- }}}

-- CONTRAST: sidebars, floating windows and popup menus {{{1
if vim.g.ayu_contrast then
  local contrast_amount = vim.g.ayu_contrast_amount
    and vim.g.ayu_contrast_amount or -30
  colors.sidebar = utils.shade(colors.bg, contrast_amount)
  colors.float   = utils.shade(colors.bg, contrast_amount)
else
  colors.sidebar = colors.bg
  colors.float   = colors.bg
end
-- }}}

return colors

-- vim:fdm=marker
