local M = {}

-- "Sensible" defualts
local sensible = {
  contrast = {
    dark = {
      enabled = true,
      amount = -15,
    },
    light = {
      enabled = false,
      amount = 10,
    },
  },
  borders = true, -- Split window borders
  italics = {
    comments  = true,  -- Italic comments
    strings   = true,  -- Italic strings
    keywords  = false, -- Italic keywords
    functions = false, -- Italic functions
    variables = false -- Italic variables
  },
  -- Select which windows get the contrast background
  disable = {
    background  = false, -- Disable setting the background color
  },
}

M.options = {}

M.setup = function(user)
  M.options = vim.tbl_deep_extend("force", {}, sensible, user or {})
end

return M
