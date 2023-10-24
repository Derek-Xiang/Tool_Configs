local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  print("nvimtree loaded failed !")
  return
end

nvim_tree.setup {
  actions = {
    open_file = {
      quit_on_open = true,
    },
    use_system_clipboard = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    custom = { "^.git$", "^node_modules$" },
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    side = "left",
  },
}
