vim.g.mapleader = " "

-- Read as: while in n (normal mode) 
-- when press leader (defined above) + something executes command

-- Netrw remaps
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vx", vim.cmd.Vex)
vim.keymap.set("n", "<leader>sx", vim.cmd.Sex)

-- Move selected snip with proper indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replace selected without overiding buffer clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")
