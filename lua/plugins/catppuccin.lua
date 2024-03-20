return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    disable = true,
    config = function()
        require("catppuccin").setup({ 
            transparent_background = true 
        }) 
    end
}
