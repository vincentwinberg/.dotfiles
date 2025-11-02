return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")

        conform.formatters["clang-format"] = {
            args = { "--style=webkit" },
        }

        conform.formatters["black"] = {
            args = { "--line-length", "88", "--stdin-filename", "$FILENAME", "-" },
        }

        conform.setup({
            formatters_by_ft = {
                -- c = { "clang-format" },
                -- cpp = { "clang-format" },
                py = { "black" },
                --lua = { "lua-format" },
            },

            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                fallback = true,
                lsp_format = "fallback",
            },
        })
    end,
}
