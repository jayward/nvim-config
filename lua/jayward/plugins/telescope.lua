return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup ({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<ESC>"] = actions.close,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
        })

        telescope.load_extension("fzf")

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
        keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
        keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
        keymap.set("n", "<leader>fc", "<cmd>Telescope commands<cr>")
        keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>")
        keymap.set("n", "<leader>fl", "<cmd>Telescope loclist<cr>")
        keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>")
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")

    end,
}