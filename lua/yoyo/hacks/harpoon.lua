return {
    'ThePrimeagen/harpoon',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()

        vim.keymap.set("n", "<leader>a", function()
            harpoon.mark.add_file()
        end, { desc = "Harpoon Add File" })

        vim.keymap.set("n", "<leader>m", function()
            harpoon.ui.toggle_quick_menu()
        end, { desc = "Harpoon Menu" })

        vim.keymap.set("n", "<leader>1", function()
            harpoon.ui.nav_file(1)
        end, { desc = "Harpoon File 1" })

        vim.keymap.set("n", "<leader>2", function()
            harpoon.ui.nav_file(2)
        end, { desc = "Harpoon File 2" })

        vim.keymap.set("n", "<leader>3", function()
            harpoon.ui.nav_file(3)
        end, { desc = "Harpoon File 3" })

        vim.keymap.set("n", "<leader>4", function()
            harpoon.ui.nav_file(4)
        end, { desc = "Harpoon File 4" })
    end,
}

