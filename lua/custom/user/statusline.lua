-- Simple and easy statusline.
--  You could remove this setup call if you don't like it,
--  and try some other statusline plugin

local statusline = require 'mini.statusline'

statusline.setup()

---@diagnostic disable-next-line: duplicate-set-field
statusline.section_fileinfo = function(args)
  local filetype = vim.bo.filetype

  if filetype == '' or vim.bo.buftype ~= '' then
    return ''
  end

  local has_devicons, devicons = pcall(require, 'nvim-web-devicons')
  local icon = ''
  if has_devicons then
    local file_name, file_ext = vim.fn.expand '%:t', vim.fn.expand '%:e'
    icon = devicons.get_icon(file_name, file_ext, { default = true }) or ''
  end
  filetype = string.format('%s  %s', icon, filetype)

  if MiniStatusline.is_truncated(args.trunc_width) then
    return filetype
  end

  local get_filesize = function()
    local size = vim.fn.getfsize(vim.fn.getreg '%')
    if size < 1024 then
      return string.format('%dB', size)
    elseif size < 1048576 then
      return string.format('%.2fKiB', size / 1024)
    else
      return string.format('%.2fMiB', size / 1048576)
    end
  end

  local encoding = vim.bo.fileencoding or vim.bo.encoding
  local format = vim.bo.fileformat
  local size = get_filesize()

  return string.format('%s %s[%s] %s', filetype, encoding, format, size)
end

-- You can configure sections in the statusline by overriding their
-- default behavior. For example, here we disable the section for
-- cursor information because line numbers are already enabled
---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function()
  return ''
end
