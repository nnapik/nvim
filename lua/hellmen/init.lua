
require('hellmen.bootstrap')
require("hellmen.lazy")
require("hellmen.remap")
require("hellmen.set")
require("hellmen.comment")

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
