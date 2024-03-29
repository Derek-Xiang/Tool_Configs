local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  vim.notify("bufferline loaded fail!")
  return
end

local bg_color = "#363636"
local tab_line_bg = "#545454"

bufferline.setup {
  options = {
    close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
  },
  highlights = {
    fill = {
      fg = { attribute = "fg", highlight = "#ff0000" },
      bg = tab_line_bg
      -- bg = { attribute = "bg", highlight = "TabLine" },
    },
    background = {
      fg = { attribute = "fg", highlight = "TabLine" },
      --bg = { attribute = "bg", highlight = "TabLine" },
      bg = bg_color
    },

    buffer_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      --bg = { attribute = "bg", highlight = "TabLine" },
      bg = bg_color
    },

    close_button = {
      fg = { attribute = "fg", highlight = "TabLine" },
      --bg = { attribute = "bg", highlight = "TabLine" },
      bg = bg_color
    },
    close_button_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    tab_selected = {
      fg = { attribute = "fg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    tab = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    tab_close = {
      fg = { attribute = "fg", highlight = "TabLineSel" },
      --bg = { attribute = "bg", highlight = "Normal" },
      bg = bg_color
    },

    duplicate_selected = {
      fg = { attribute = "fg", highlight = "TabLineSel" },
      bg = { attribute = "bg", highlight = "TabLineSel" },
      underline = true,
      undercurl = true,
      italic = true
    },
    duplicate_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
      underline = true,
      undercurl = true,
      italic = true
    },
    duplicate = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
      underline = true,
      undercurl = true,
      italic = true
    },

    modified = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    modified_selected = {
      fg = { attribute = "fg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    modified_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    separator = {
      fg = { attribute = "bg", highlight = "TabLine" },
      --bg = { attribute = "bg", highlight = "TabLine" },
      bg = bg_color
    },
    separator_selected = {
      fg = { attribute = "bg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    indicator_selected = {
      fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
  },
}

