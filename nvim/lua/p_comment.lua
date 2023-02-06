local status_ok, comment = pcall(require, "Comment")

if not status_ok then
  vim.notify("Comment loaded fail!")
  return
end

-- Default settings
comment.setup({})
