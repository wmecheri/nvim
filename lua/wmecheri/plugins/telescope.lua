return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require('telescope')
        -- local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                path_display = {'smart'},
                initial_mode = "normal",            }
        })
        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
        vim.keymap.set("n", "<leader>fd", "<cmd>Telescope live_grep<cr>")
    end
}
