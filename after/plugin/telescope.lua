local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>gf', builtin.live_grep)
vim.keymap.set('v', '<leader>gf', builtin.grep_string)
vim.keymap.set('n', '<leader>bb', builtin.buffers)
vim.keymap.set('n', '<leader>kb', builtin.keymaps)
vim.keymap.set('n', '<leader><leader>', builtin.commands)
vim.keymap.set('n', '<leader>h', builtin.help_tags)

require('telescope').setup{
    file_ignore_patterns = { ".git"}
}
