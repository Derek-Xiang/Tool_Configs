local neoclip_status_ok, neoclip = pcall(require, "neoclip")
if not neoclip_status_ok then
  print("Neoclip loaded failed !")
  return
end

local function is_whitespace(line)
  return vim.fn.match(line, [[^\s*$]]) ~= -1
end

local function all(tbl, check)
  for _, entry in ipairs(tbl) do
    if not check(entry) then
      return false
    end
  end
  return true
end

neoclip.setup({
  filter = function(data)
    return not all(data.event.regcontents, is_whitespace) -- Remove whitespace yanks
  end,
  keys = {
    telescope = {
      i = {
        paste = '<c-p>',
        paste_behind = '<c-P>', -- Overwrite the default <c-k>
      }
    }
  }
})
