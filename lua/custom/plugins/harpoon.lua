return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = function()
      local harpoon = require 'harpoon'
      harpoon:setup { settings = { save_on_toggle = true } }
      vim.keymap.set('n', '<leader>ha', function()
        harpoon:list():append()
      end, { desc = 'Add file to harpoon' })
      vim.keymap.set('n', '<leader>hr', function()
        harpoon:list():remove()
      end, { desc = 'Remove file from harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end)
    end,
  },
}
