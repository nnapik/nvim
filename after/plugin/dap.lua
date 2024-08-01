require("dap-python").setup('python3')
--dap.adapters.go = {
--    type = 'go';
--    request = 'launch';
--    name = 'Launch file';
--    program = '${file}';
--}
vim.keymap.set("n", "<leader>tb", require("dap").toggle_breakpoint)
vim.keymap.set("n", "<F9>", require("dap").toggle_breakpoint)
vim.keymap.set("n", "<F5>", require("dap").continue)
vim.keymap.set("n", "<F6>", require("dap").close)
vim.keymap.set("n", "<F10>", require("dap").step_over)
vim.keymap.set("n", "<F11>", require("dap").step_into)
