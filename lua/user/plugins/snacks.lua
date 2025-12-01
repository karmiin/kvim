return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    scroll = { enabled = true },
    
    lazygit = {
      configure = true,
      theme = {
         activeBorderColor = { fg = "SnacksTerm", bold = true },
      }
    },

    dashboard = {
      enabled = true,
      
      preset = {
        header = [[
   ▄█   ▄█▄  ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
  ███ ▄███▀ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ 
  ███▐██▀   ███    ███ ███▌ ███   ███   ███ 
 ▄█████▀    ███    ███ ███▌ ███   ███   ███ 
▀▀█████▄    ███    ███ ███▌ ███   ███   ███ 
  ███▐██▄   ███    ███ ███  ███   ███   ███ 
  ███ ▀███▄ ███    ███ ███  ███   ███   ███ 
  ███   ▀█▀  ▀██████▀  █▀    ▀█   ███   █▀  
  ▀                                         
]],
      },

      sections = {
        { 
            section = "header",
            padding = 1, 
        },
        
       {
            align = "center",
            text = { "_by Karmin" },
            hl = "String", 
            padding = 1,
        },
        
        { section = "keys", gap = 1, padding = 1, indent = 2 },

        {
            align = "center",
            text = { "It's not a bug, it's a feature." },
            padding = 1,
            hl = "Comment",
        }
      },
    },
  },

  keys = {
    { "<leader>.", function() Snacks.scratch() end, desc = "Toggle Scratchpad" },
    { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    { "<leader>rf", function() Snacks.rename.rename_file() end, desc = "Rename File" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Git Log" },
  },
  
  init = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#bd93f9", bold = true })
  end,
}