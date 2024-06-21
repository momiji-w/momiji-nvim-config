return {}
--[[
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
        require("catppuccin").setup({
            flavour = "frappe",
            transparent_background = true,
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        })
    end
}
--]]
