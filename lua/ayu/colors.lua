local utils = require'ayu.utils'

local c = {
  white = '#ffffff',
  black = '#000000',
  none  = 'NONE',
}

-- VARIANTS: mirage, dark and light
if vim.o.background == 'dark' then
  if vim.g.ayu_mirage then
    -- basics
    c.accent             = '#ffcc66'
    c.bg                 = '#212733'
    c.fg                 = '#d9d7ce'
    c.fg_idle            = '#607080'
    -- editor
    c.comment            = '#5c6773'
    c.constant           = '#d4bfff'
    c.entity             = '#73d0ff'
    c.error              = '#ff3333'
    c.func               = '#ffd57f'
    c.keyword            = '#ffae57'
    c.line               = '#242b38'
    c.markup             = '#f07178'
    c.operator           = '#80d4ff'
    c.regexp             = '#95e6cb'
    c.special            = '#ffc44c'
    c.string             = '#bbe67e'
    c.tag                = '#5ccfe6'
    c.ui                 = '#707a8c'
    c.warning            = '#ffa759'
    -- gui
    c.guide_active       = '#576070'
    c.guide_normal       = '#3d4751'
    c.gutter_active      = '#5f687a'
    c.gutter_normal      = '#404755'
    c.panel_bg           = '#272d38'
    c.panel_border       = '#101521'
    c.panel_shadow       = '#141925'
    c.selection_bg       = '#33415e'
    c.selection_border   = '#232a4c'
    c.selection_inactive = '#343f4c'
    -- vcs
    c.vcs_added          = '#a6cc70'
    c.vcs_added_bg       = '#313d37'
    c.vcs_diff_text      = '#465742'
    c.vcs_modified       = '#77a8d9'
    c.vcs_modified_bg    = '#323a4c'
    c.vcs_removed        = '#f27983'
    c.vcs_removed_bg     = '#3e373a'
  else
    -- basics
    c.accent             = '#f29718'
    c.bg                 = '#0f1419'
    c.fg                 = '#e6e1cf'
    c.fg_idle            = '#3e4b59'
    -- editor
    c.comment            = '#5c6773'
    c.constant           = '#ffee99'
    c.entity             = '#59c2ff'
    c.error              = '#ff3333'
    c.func               = '#ffb454'
    c.keyword            = '#ff7733'
    c.line               = '#151a1e'
    c.markup             = '#f07178'
    c.operator           = '#e7c547'
    c.regexp             = '#95e6cb'
    c.special            = '#e6b673'
    c.string             = '#b8cc52'
    c.tag                = '#36a3d9'
    c.ui                 = '#4d5566'
    c.warning            = '#ff8f40'
    -- gui
    c.guide_active       = '#393f4d'
    c.guide_normal       = '#2d3640'
    c.gutter_active      = '#464d5e'
    c.gutter_normal      = '#323945'
    c.panel_bg           = '#14191f'
    c.panel_border       = '#000000'
    c.panel_shadow       = '#00010a'
    c.selection_bg       = '#273747'
    c.selection_border   = '#304357'
    c.selection_inactive = '#253340'
    -- vcs
    c.vcs_added          = '#91b362'
    c.vcs_added_bg       = '#1d2214'
    c.vcs_diff_text      = '#363e1c'
    c.vcs_modified       = '#6994bf'
    c.vcs_modified_bg    = '#1b2733'
    c.vcs_removed        = '#d96c75'
    c.vcs_removed_bg     = '#2d2220'
  end
  -- CONTRAST: sidebars, floating windows and popup menus
  if vim.g.ayu_contrast then
    local amount = vim.g.ayu_contrast_amount and vim.g.ayu_contrast_amount or -15
    c.sidebar = utils.shade(c.bg, amount)
    c.float   = utils.shade(c.bg, amount)
  else
    c.sidebar = c.bg
    c.float   = c.bg
  end
else
  -- basics
  c.accent             = '#ff6a00'
  c.bg                 = '#fafafa'
  c.fg                 = '#5c6773'
  c.fg_idle            = '#828c99'
  -- editor
  c.comment            = '#abb0b6'
  c.constant           = '#a37acc'
  c.entity             = '#399ee6'
  c.error              = '#ff3333'
  c.func               = '#f29718'
  c.keyword            = '#ff7733'
  c.line               = '#f3f3f3'
  c.markup             = '#f07178'
  c.operator           = '#e7c547'
  c.regexp             = '#4cbf99'
  c.special            = '#e6b673'
  c.string             = '#86b300'
  c.tag                = '#36a3d9'
  c.ui                 = '#8a9199'
  c.warning            = '#fa8d3e'
  -- gui
  c.guide_active       = '#d3d5d8'
  c.guide_normal       = '#d9d8d7'
  c.gutter_active      = '#a0a6ac'
  c.gutter_normal      = '#cdd0d3'
  c.panel_bg           = '#ffffff'
  c.panel_border       = '#f0f0f0'
  c.panel_shadow       = '#ccced0'
  c.selection_bg       = '#d1e4f4'
  c.selection_border   = '#e1e1e2'
  c.selection_inactive = '#f0eee4'
  -- vcs
  c.vcs_added          = '#99bf4d'
  c.vcs_added_bg       = '#e0e7cd'
  c.vcs_diff_text      = '#d3e0af'
  c.vcs_modified       = '#709ecc'
  c.vcs_modified_bg    = '#e7e8e9'
  c.vcs_removed        = '#f27983'
  c.vcs_removed_bg     = '#f9ebe4'
end

return c
