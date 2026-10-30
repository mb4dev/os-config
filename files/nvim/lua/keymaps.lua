local builtin = require("telescope.builtin")

local map = vim.keymap.set

map("n", "<C-p>", builtin.find_files, {
  desc = "Find files"
})

map("n", "<C-S-f>", builtin.live_grep, {
  desc = "Search files"
})

map("n", "<C-S-p>", builtin.commands, {
  desc = "Command palette"
})
