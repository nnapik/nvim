vim.g.mapleader = " "
return require('lazy').setup({
    -- Packer can manage itself
    'folke/lazy.nvim',

    -- Plugin for finding and switching between files/buffers
    'nvim-lua/plenary.nvim',
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
    },

    --colorscheme
    { 'morhetz/gruvbox',                 config = function() vim.cmd.colorscheme("gruvbox") end },
    { 'norcalli/nvim-colorizer.lua' },

    -- Git marks
    { 'lewis6991/gitsigns.nvim' },

    --intellisense
    { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
    { 'towolf/vim-helm' },

    -- integrated terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Language Server integration
    -- LSP Support
    { "neovim/nvim-lspconfig",
      dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
      },
      config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        require('mason').setup()
        local mason_lspconfig = require 'mason-lspconfig'
        mason_lspconfig.setup {
            ensure_installed = { "pyright" }
        }
        require("lspconfig").pyright.setup {
            capabilities = capabilities,
        }
      end
    },
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    { 'VonHeikemen/lsp-zero.nvim',      branch = 'v2.x' },

    -- golang
    {
        "ray-x/go.nvim",
        dependencies = {
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter"
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()'
    },

    -- Debug tools
    { "mfussenegger/nvim-dap" },
--    { 'rcarriga/nvim-dap-ui' },
    { 'mfussenegger/nvim-dap-python' },
    { "mfussenegger/nvim-dap-ui" },
    { "theHamsta/nvim-dap-virtual-text" },

    -- Snippets
    'SirVer/ultisnips',
    'honza/vim-snippets',

    -- Autopair for [] () {}
    {'windwp/nvim-autopairs', config = function ()
            require('nvim-autopairs').setup {}
    end},

    -- tmux integration
    {
        'alexghergh/nvim-tmux-navigation',
        config = function()
            local nvim_tmux_nav = require('nvim-tmux-navigation')

            nvim_tmux_nav.setup {
                disable_when_zoomed = true -- defaults to false
            }

            vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
            vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
            vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
            vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
            vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
            vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
}
)
