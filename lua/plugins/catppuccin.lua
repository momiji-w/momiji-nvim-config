return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    disable = true,
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        })
    end
}
