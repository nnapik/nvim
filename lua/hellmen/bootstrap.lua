--lazy bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- go bootstrap
-- delve debugger
local dlv_path = vim.fn.stdpath("data") .. "/delve"
if not vim.loop.fs_stat(dlv_path) then
    vim.fn.system({
        'git',
        'clone',
        'https://github.com/go-delve/delve',
        dlv_path
    })
    vim.fn.system({
        'go',
        'install',
        'github.com/go-delve/delve/cmd/dlv',
        dlv_path
    })
end

