return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            window = {
                width = 28,
                mappings = {
                    ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
                    ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
                    ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
                }
            },
            filesystem = {
                filtered_items = {
                    visible = false,
                    show_hidden_count = true,
                    hide_dotfiles = true,
                    hide_gitignored = false,
                    hide_by_name = {
                        -- '.git',
                        -- "node_modules"
                    },
                    never_show = {},
                },
            }
        })
        vim.keymap.set("n", "<leader>jv", "<Cmd>Neotree toggle<CR>")
    end
}
