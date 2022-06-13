local keymap = vim.api.nvim_set_keymap
local map = vim.keymap.set
local opts = {noremap = true}

-- Telescope file find 
map('n', "<C-p>", function()
    require("telescope.builtin").find_files()
end)

-- Comment
map('n', "++", function()
    require("Comment.api").toggle_current_linewise()
end)

-- Bufferline
map("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer tab" })
map("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer tab"})

-- Indent mode
map("v", "<", "<gv", { desc = "unindent line" })
map("v", ">", ">gv", { desc = "indent line" })
