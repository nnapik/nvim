local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>qf', builtin.quickfix)


local setup = require('telescope')
