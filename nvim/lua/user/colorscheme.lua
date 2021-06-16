-- local colorscheme = "darkplus"
-- 
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- 
-- if not status_ok then
--   vim.notify("colorcheme " .. colorscheme .. " not found!")
--   return
-- end


-- .. in lua is string concatenation
vim.cmd [[
try
  colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
