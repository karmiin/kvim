return {
  "mrcjkb/rustaceanvim",
  version = "^5", 
  lazy = false,   
  
  config = function()
    vim.g.rustaceanvim = {
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
      server = {
        on_attach = function(client, bufnr)
          local opts = { buffer = bufnr, desc = "Rust Action" }
          
          vim.keymap.set("n", "<leader>ca", function() vim.cmd.RustLsp('codeAction') end, opts)
          vim.keymap.set("n", "<leader>ce", function() vim.cmd.RustLsp('explainError') end, { buffer = bufnr, desc = "Explain Rust Error" })
          
          vim.keymap.set("n", "<leader>dd", function() vim.cmd.RustLsp('debuggables') end, { buffer = bufnr, desc = "Debug Rust" })
        end,
      },
    }
  end
}