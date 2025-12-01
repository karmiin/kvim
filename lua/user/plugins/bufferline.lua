return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", 
        separator_style = "slant", 
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
            {
                filetype = "neo-tree",
                text = "FILE EXPLORER",
                text_align = "center",
                separator = true
            }
        },
      },
    })
    -- Shortcut per muoversi tra i buffer velocemente
    vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", {desc="Next Buffer"})
    vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", {desc="Prev Buffer"})
    vim.keymap.set("n", "<leader>x", ":bdelete<CR>", {desc="Close Buffer"}) -- Chiudi buffer corrente
  end,
}