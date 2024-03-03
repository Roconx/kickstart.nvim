return {
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    keys = {
      { mode = 'n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>', desc = 'Go to left window', remap = true },
      { mode = 'n', '<C-l>', '<cmd> TmuxNavigateRight<CR>', desc = 'Go to lower window', remap = true },
      { mode = 'n', '<C-j>', '<cmd> TmuxNavigateDown<CR>', desc = 'Go to upper window', remap = true },
      { mode = 'n', '<C-k>', '<cmd> TmuxNavigateUp<CR>', desc = 'Go to right window', remap = true },
    },
  },
}
