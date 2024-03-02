return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  keys = {
    { '<leader>g', '<cmd>LazyGit<CR>', desc = 'Lazy[G]it' },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
