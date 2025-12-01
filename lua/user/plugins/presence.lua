return {
    "andweeb/presence.nvim",
    config = function()
        require("presence").setup({
            auto_update         = true,
            neovim_image_text   = "The One True Editor",
            main_image          = "neovim",
            client_id           = "793271441293967371",
            log_level           = nil,
        })
    end
}