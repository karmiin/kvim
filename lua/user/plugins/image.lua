return {
  "3rd/image.nvim",
  config = function()
    require("image").setup({
      backend = "kitty", 
      integrations = {
        markdown = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
        },
      },
      max_width_window_percentage = 50, 
    })
  end
}