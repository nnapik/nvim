vim.g.mapleader = " "

vim.keymap.set("n", "<leader>x", function ()
    vim.cmd.write()
    vim.cmd.Ex()
end)

vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>.", vim.cmd.Ex)
vim.keymap.set("n", "<leader>d", vim.cmd.bdelete)
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })

vim.keymap.set("n", "<leader>l", vim.cmd.vs)
vim.keymap.set("n", "<leader>j", vim.cmd.sp)
vim.keymap.set("n", "<leader>wd", vim.cmd.close)

vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tl", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>th", vim.cmd.tabprev)
vim.keymap.set("n", "<leader>td", vim.cmd.tabclose)

vim.keymap.set("n", "<leader>bn", vim.cmd.enew)
vim.keymap.set("n", "<leader>bl", vim.cmd.bnext)
vim.keymap.set("n", "<leader><Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<leader>bh", vim.cmd.bprev)
vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete)

vim.keymap.set("n", "<leader>ev", ":e ~/.config/nvim<CR>")
vim.keymap.set("n", "<leader>ov", ":e ~/.config/nvim.bak/init.vim<CR>")
vim.keymap.set("n", "<leader>so", vim.cmd.so)

--remove highlight with a <CR>
vim.keymap.set("n", "<CR>", ":noh<CR>j", { silent = true })
--reformat the whole file
vim.keymap.set("n", "<leader>=", "gg=G''")

--reformat json file
vim.keymap.set("n", "=j", function ()
    vim.cmd(":%!python -m tool json.tool<CR>")
end)

--add ; to the end of this line
vim.keymap.set("n", "<leader>;", "mqA;<ESC>`qmq")

--move lines with J and K in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--paste without overwriting the copy/paste register
vim.keymap.set("x", "<leader>p", "\"_dP")

--add/remove comments, TODO
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        Comment_leader = "--"
    end
})
vim.keymap.set("n", "<leader>cc", ":<C-B>silent <C-E>s/^/<C-R>=escape(b:Comment_leader,'/')<CR>/<CR>:nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "<leader>cu", ":<C-B>silent <C-E>s/^V<C-R>=escape(b:Comment_leader,'/')<CR>//e<CR>:nohlsearch<CR>", { silent = true })
