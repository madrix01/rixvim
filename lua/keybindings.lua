local keymap = vim.api.nvim_set_keymap
local map = vim.keymap.set
local opts = {noremap = false}
keymap('n', '<C-l>', ":tabn<C-r>", opts)

-- Telescope file find 
map('n', '<C-p>', function()
    require("telescope.builtin").find_files()
end)

-- Comment
map('n', '++', function()
    require("Comment.api").toggle_current_linewise()
end)
