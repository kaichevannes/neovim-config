return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>jf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git file search'})
    vim.keymap.set('n',  '<leader>js', function()
    	builtin.grep_string({search = vim.fn.input("Grep > ")})
    end)
end    
}
