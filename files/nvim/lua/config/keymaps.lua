local builtin = require("telescope.builtin")

local map = vim.keymap.set

-- Telescope
map("n", "<C-p>", builtin.find_files, { desc = "Find files" })
map("n", "<C-S-f>", builtin.live_grep, { desc = "Search in files" })
map("n", "<C-S-p>", builtin.commands, { desc = "Command palette" })

-- Fallback se il terminale non distingue Ctrl+Shift
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Search in files" })
map("n", "<leader>fp", builtin.commands, { desc = "Command palette" })

-- Explorer
map("n", "<C-b>", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })

-- Salvataggio (con format_on_save attivo basta :write)
map({ "n", "i" }, "<C-s>", "<cmd>write<CR>", { silent = true, desc = "Save" })

-- Editing in insert mode
map("i", "<C-k>", "<C-o>dd", { silent = true, desc = "Delete line" })
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { silent = true, desc = "Move line up" })
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { silent = true, desc = "Move line down" })
map("i", "<C-BS>", "<C-w>", { silent = true, desc = "Delete word back" })
map("i", "<C-Del>", "<C-o>dw", { silent = true, desc = "Delete word forward" })
map("i", "<C-v>", "<C-r>+", { silent = true, desc = "Paste from clipboard" })

-- Clipboard in visual mode
map("v", "<C-c>", '"+y', { silent = true, desc = "Copy to clipboard" })
map("v", "<C-v>", '"+p', { silent = true, desc = "Paste from clipboard" })
map("v", "<C-x>", '"+d', { silent = true, desc = "Cut to clipboard" })
