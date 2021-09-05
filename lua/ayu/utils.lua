local utils = {}

function utils.highlight(group, color)
  local fg    = color.fg    and 'guifg=' .. color.fg    or 'guifg=NONE'
  local bg    = color.bg    and 'guibg=' .. color.bg    or 'guibg=NONE'
  local style = color.style and 'gui='   .. color.style or 'gui=NONE'
  local sp    = color.sp    and 'guisp=' .. color.sp    or ''

  vim.api.nvim_command(string.format(
    'highlight %s %s %s %s %s',
    group, fg, bg, style, sp
  ))
end

--- Transform an HEX color string into an RGB color and
  -- decompose it into its three components
local function to_rgb(color)
  local r = tonumber(string.sub(color, 2, 3), 16)
  local g = tonumber(string.sub(color, 4, 5), 16)
  local b = tonumber(string.sub(color, 6),    16)
  return r, g, b
end

--- Programattically shaden/lighten an HEX color and blend the colors
  -- @param color string HEX color
  -- @param percent number percentage value to which the color is lighten
function utils.shade(color, percent)
  local r, g, b = to_rgb(color)

  if not r or not g or not b then
    return 'NONE'
  end

  r = math.floor(tonumber(r * (1 + percent / 100)))
  g = math.floor(tonumber(g * (1 + percent / 100)))
  b = math.floor(tonumber(b * (1 + percent / 100)))

  r = r < 255 and r or 255
  g = g < 255 and g or 255
  b = b < 255 and b or 255

  r = string.format("%x", r)
  g = string.format("%x", g)
  b = string.format("%x", b)

  local rr = string.len(r) == 1 and "0" .. r or r
  local gg = string.len(g) == 1 and "0" .. g or g
  local bb = string.len(b) == 1 and "0" .. b or b

  return "#" .. rr .. gg .. bb
end

return utils
