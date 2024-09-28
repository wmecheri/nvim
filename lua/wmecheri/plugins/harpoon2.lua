return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup({
            global_settings = {
                save_on_toggle = false,
                save_on_change = true,
                enter_on_sendcmd = false,
                tmux_autoclose_windows = false,
                excluded_filetypes = { "harpoon" },
                mark_branch = true,
            },
        })

        local keymap = vim.keymap
        keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        keymap.set("n", "<leader>&", function() harpoon:list():select(1) end)
        keymap.set("n", "<leader>é", function() harpoon:list():select(2) end)
        keymap.set("n", '<leader>"', function() harpoon:list():select(3) end)
        keymap.set("n", "<leader>'", function() harpoon:list():select(4) end)
        keymap.set("n", "<leader>(", function() harpoon:list():select(5) end)

        -- Toggle previous & next buffers stored within Harpoon list
        keymap.set("n", "<leader>k", function() harpoon:list():prev() end)
        keymap.set("n", "<leader>j", function() harpoon:list():next() end)
    end
}
