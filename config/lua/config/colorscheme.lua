-- colorscheme
local colorscheme = "afterglow"
-- vim.g.tokyonight_style = "night"
vim.cmd("let g:afterglow_inherit_background=1")

-- Load colorscheme, protected mode
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- Remove background
-- vim.cmd("hi normal guibg=000000")   
