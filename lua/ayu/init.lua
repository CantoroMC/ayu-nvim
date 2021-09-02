local ayu   = require'ayu.theme'
local utils = require'ayu.utils'

local M = {}

function M.apply()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name   = 'ayu'

  -- Asynchronously Load Plugins, TreeSitter and LSP
  local async
  async = vim.loop.new_async(
    vim.schedule_wrap(
      function ()
        ayu.define_terminal()

        local plugins = ayu.define_plugins()
        for group, color in pairs(plugins) do
          utils.highlight(group, color)
        end

        local treeSitter = ayu.define_treeSitter()
        for group, color in pairs(treeSitter) do
          utils.highlight(group, color)
        end

        local lsp = ayu.define_LSP()
        for group, color in pairs(lsp) do
          utils.highlight(group, color)
        end

        if vim.g.ayu_contrast then
          vim.cmd [[
            augroup ayu_contrast
              autocmd!
              autocmd TermOpen *         setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat
              autocmd FileType packer,qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat
            augroup end
          ]]
        end

        async:close()
      end
    )
  )

  -- load base theme
  local editor = ayu.define_editor()
  for group, color in pairs(editor) do
    utils.highlight(group, color)
  end

  local syntax = ayu.define_syntax()
  for group, color in pairs(syntax) do
    utils.highlight(group, color)
  end

  async:send()
end

return M
