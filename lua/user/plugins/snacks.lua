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
      
      -- 1. IL LOGO (Lo lasciamo qui perché funziona)
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
        -- SEZIONE A: Stampa il Logo definito sopra
        { 
            section = "header",
            padding = 1, 
        },
        
        -- SEZIONE B: Sottotitolo (AGGIUNTO QUI)
        -- Usiamo 'align' e 'text' diretto così non si rompe
        {
            align = "center",
            text = { "_by Karmin" },
            hl = "String", -- Questo lo rende VERDE (o colore stringa del tema)
            padding = 1,
        },
        
        -- SEZIONE C: I Tasti
        { section = "keys", gap = 1, padding = 1, indent = 2 },
        
        -- SEZIONE D: Footer
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
  
  -- Colora il Logo Principale di Viola (TokyoNight)
  init = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#bd93f9", bold = true })
  end,
}