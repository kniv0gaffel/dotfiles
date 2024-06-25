return {
    {"nvim-lua/plenary.nvim"},
    {
        "tpope/vim-surround",
        lazy = false
    },
    {
        "folke/which-key.nvim",
        keys = { "<leader>", "<c-r>", '"', "'", "`", "c", "v", "g" },
        init = function()
            require("utils").load_mappings "whichkey"
        end,
        cmd = "WhichKey",
        config = function(_, opts)
            require("which-key").setup(opts)
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },
    {
        "folke/zen-mode.nvim",
        cmd = {'ZenMode'},
    },
    {
        "lervag/vimtex",
        ft = {"tex","md"},
    },
    {
        "kaarmu/typst.vim",
        ft = {"typst"},
    },
    {
        "ggandor/leap.nvim",
        keys = { "s", "S", "gs",},
        config = function()
            require("leap").create_default_mappings()
        end,
    },
}
