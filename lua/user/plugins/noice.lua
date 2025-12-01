return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify", 
  },
  config = function()

    require("notify").setup({
      background_colour = "#000000", 
      render = "wrapped-compact",   
      stages = "fade",             
      timeout = 3000,              
      top_down = true,             
    })

    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,   
        command_palette = true,    
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      cmdline = {
        view = "cmdline", 
      },
    })
    
    vim.keymap.set("n", "<leader>n", ":Telescope notify<CR>", { desc = "Notification History" })
    
    vim.keymap.set("n", "<leader>nd", function() require("notify").dismiss() end, {desc="Dismiss Notifications"})
  end,
}