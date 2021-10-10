local wk = require('which-key')
local mappings = {
  q = {':q<CR>', 'Quit'},
  e = {':NvimTreeToggle<CR>', 'Explore'},
  v = {':vsp<CR>', 'Split Right'},
  h = {':spl<CR>', 'Split Below'},
  d = {':bd<CR>', 'Close Buffer'},
  s = {
    name = 'Search',
    c = {':e ~/.config/nvim/init.lua<CR>', 'Config'},
  }
}
local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
