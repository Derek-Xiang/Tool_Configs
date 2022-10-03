-- Setup nvim-surround.

local status_ok, surround = pcall(require, "nvim-surround")
if not status_ok then
  vim.notify("nvim-surround loaded fail")
  return
end

surround.setup()


