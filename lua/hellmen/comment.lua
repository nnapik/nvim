--add/remove comments
vim.api.nvim_create_autocmd("FileType", {
    pattern = "zsh",
    callback = function()
        vim.b.Comment_leader = "#"
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.b.Comment_leader = "#"
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.b.Comment_leader = "--"
    end
})



vim.keymap.set("n", "<leader>cc", ":<C-B> <C-E>s/^/<C-R>=escape(b:Comment_leader,'/')<CR>/<CR>:nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "<leader>cu", ":<C-B> <C-E>s/^<C-R>=escape(b:Comment_leader,'/')<CR>//e<CR>:nohlsearch<CR>", { silent = true })
vim.keymap.set("v", "<leader>cc", ":<C-B> <C-E>s/^/<C-R>=escape(b:Comment_leader,'/')<CR>/<CR>:nohlsearch<CR>", { silent = true })
vim.keymap.set("v", "<leader>cu", ":<C-B> <C-E>s/^<C-R>=escape(b:Comment_leader,'/')<CR>//e<CR>:nohlsearch<CR>", { silent = true })
