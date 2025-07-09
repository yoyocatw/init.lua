return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "html", "python", "lua" }, -- Add more if needed
            highlight = { enable = true },
            auto_install = true,
        })
    end,
}

