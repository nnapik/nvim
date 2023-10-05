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

require("hellmen.lazy")
require("hellmen.remap")
require("hellmen.set")

--if opening neovide, change directory to current file's directory
if vim.g.neovide then
    -- if opening neovide with selecting a file, change directory to that file
    if (#vim.v.argv) == 4 then
        vim.cmd.cd("%:h")
    -- if opening neovide on its own, change directory to the HOME
    else
        vim.cmd.cd(os.getenv("HOME"))
    end
end
