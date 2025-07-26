require("config.options")
require("config.lazy")
require("config.keymaps")

vim.diagnostic.config({
    virtual_text = true,      -- show inline text
    signs = true,             -- show signs in the gutter
    update_in_insert = false, -- don't show while typing
    underline = true,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
