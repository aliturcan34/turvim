-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Debugging
vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end, { desc = "start debugger" })
vim.keymap.set("n", "<F6>", function()
  require("dap").step_over()
end)
vim.keymap.set("n", "<F7>", function()
  require("dap").step_into()
end)
vim.keymap.set("n", "<F8>", function()
  require("dap").step_out()
end)
