local opt = vim.opt

opt.number = true             
opt.relativenumber = true     
opt.cursorline = true         
opt.termguicolors = true      
opt.signcolumn = "yes"        

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true          
opt.autoindent = true

opt.wrap = false              
opt.ignorecase = true         
opt.smartcase = true          
opt.updatetime = 250          
opt.timeoutlen = 300          


opt.clipboard:append("unnamedplus")


opt.splitright = true         
opt.splitbelow = true         

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#bd93f9", bold = true })