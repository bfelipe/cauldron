vim.g.mapleader = " "

-- Read as: while in n (normal mode) 
-- when press leader (defined above) + something executes command

-- Netrw remaps
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vx", vim.cmd.Vex)
vim.keymap.set("n", "<leader>sx", vim.cmd.Sex)
