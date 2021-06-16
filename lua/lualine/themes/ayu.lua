local colors = {}
local ayu = {}

if vim.o.bg == 'dark' then
  if vim.g.ayu_mirage then
    colors = {
      base0   = '#212733',
      base1   = '#1c2328',
      base2   = '#232b32',
      base3   = '#323945',
      base4   = '#313d46',
      base5   = '#384550',
      base6   = '#3f4e5a',
      base7   = '#465764',
      blue    = '#80d4ff',
      cyan    = '#e6e1cf',
      green   = '#bbe67e',
      magenta = '#f07178',
      orange  = '#f07178',
      red     = '#ff3333',
      violet  = '#a37acc',
      yellow  = '#ffae57',
    }
  else
    colors = {
      base0   = '#151a1e',
      base1   = '#1c2328',
      base2   = '#232b32',
      base3   = '#2a343c',
      base4   = '#313d46',
      base5   = '#384550',
      base6   = '#3f4e5a',
      base7   = '#465764',
      blue    = '#36a3d9',
      cyan    = '#95e6cb',
      green   = '#b8cc52',
      magenta = '#f07178',
      orange  = '#ff7733',
      red     = '#ff3333',
      violet  = '#a37acc',
      yellow  = '#e7c547',
    }
  end
  ayu = {
    normal = {
      a = {fg = colors.base3, bg = colors.green, gui = 'bold'  },
      b = {fg = colors.green, bg = colors.base3                },
      c = {fg = colors.cyan,  bg = colors.base0, gui = 'italic'},
    },
    insert = {
      a = {fg = colors.base3, bg = colors.blue,  gui = 'bold'  },
      b = {fg = colors.blue,  bg = colors.base3                },
      c = {fg = colors.cyan,  bg = colors.base0, gui = 'italic'},
    },
    replace = {
      a = {fg = colors.base2,  bg = colors.orange, gui = 'bold' },
      b = {fg = colors.orange, bg = colors.base3                },
      c = {fg = colors.cyan,   bg = colors.base0, gui = 'italic'},
    },
    visual = {
      a = {fg = colors.base6,  bg = colors.yellow, gui = 'bold'},
      b = {fg = colors.yellow, bg = colors.base6},
      c = {fg = colors.cyan,   bg = colors.base0, gui = 'italic'},
    },
    inactive = {
      a = {fg = colors.blue, bg = colors.base2, gui = 'bold'},
      b = {fg = colors.blue, bg = colors.base1},
      c = {fg = colors.blue, bg = colors.base0},
    }
  }
else
  colors = {
    base0   = '#eaeaea',
    base1   = '#fafafa',
    base2   = '#fafafa',
    base3   = '#fafafa',
    base4   = '#313d46',
    base5   = '#ef7e46',
    base6   = '#fafafa',
    base7   = '#465764',
    blue    = '#36a3d9',
    cyan    = '#95e6cb',
    green   = '#b8cc52',
    magenta = '#f07178',
    orange  = '#ff7733',
    red     = '#ff3333',
    violet  = '#a37acc',
    yellow  = '#e7c547',
  }
  ayu = {
    normal = {
      a = {fg = colors.base3, bg = colors.green, gui = 'bold'  },
      b = {fg = colors.green, bg = colors.base3                },
      c = {fg = colors.blue,  bg = colors.base0, gui = 'italic'},
    },
    insert = {
      a = {fg = colors.base3,  bg = colors.blue,  gui = 'bold'  },
      b = {fg = colors.orange, bg = colors.base3                },
      c = {fg = colors.blue,   bg = colors.base0, gui = 'italic'},
    },
    replace = {
      a = {fg = colors.base2,  bg = colors.orange, gui = 'bold' },
      b = {fg = colors.orange, bg = colors.base3                },
      c = {fg = colors.blue,   bg = colors.base0, gui = 'italic'},
    },
    visual = {
      a = {fg = colors.base6,  bg = colors.yellow, gui = 'bold'},
      b = {fg = colors.yellow, bg = colors.base6},
      c = {fg = colors.blue,   bg = colors.base0, gui = 'italic'},
    },
    inactive = {
      a = {fg = colors.blue, bg = colors.base2, gui = 'bold'},
      b = {fg = colors.blue, bg = colors.base1},
      c = {fg = colors.blue, bg = colors.base0},
    }
  }
end

return ayu
