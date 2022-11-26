local M = {}

function M.highlight(name, props)
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

return M
