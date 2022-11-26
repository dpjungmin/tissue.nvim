local function hl(name, props)
  if props.link then
    vim.cmd('highlight! link ' .. name .. ' ' .. props.link)
    return
  end

  local val = {}

  if props.fg then
    val.fg = props.fg
  end

  if props.bg then
    val.bg = props.bg
  end

  if props.sp then
    val.sp = props.sp
  end

  if props.style and not (props.style == 'NONE') then
    if type(props.style) == 'string' then
      val[props.style] = true
    end

    if type(props.style) == 'table' then
      for _, style in ipairs(props.style) do
        val[style] = true
      end
    end
  end

  vim.api.nvim_set_hl(0, name, val)
end

local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'tissue'
  vim.opt.termguicolors = true

  local config = require 'tissue.config'

  for _, g in pairs(config) do
    for n, p in pairs(g) do
      hl(n, p)
    end
  end
end

return M
