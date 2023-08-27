local map = vim.keymap.set

map('n', "<Space>f", function ()
  require("telescope.builtin").find_files({hidden = true, no_ignore = true})
end)

map('n', "<Space>g", function ()
  require("telescope.builtin").live_grep()
end)

map('n', "<Space>w", function ()
  require("telescope.builtin").grep_string()
end)

map('n', "<Space>d", function ()
  require("telescope.builtin").diagnostics()
end)

map('n', '<Space>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]'})

map('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
map('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

map("n", "t", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer tab" })
map("n", "T", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer tab"})
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", {desc = "Open file tree"})
map("n", "<C-d>", "<cmd>bdelete<cr>", {desc = "Delete current buffer"})
map({"n", "i", "v", "t"}, "<C-`>", "<cmd>ToggleTerm<cr>", {desc = "Open terminal"})
map("n", "ww", "<cmd>w<cr>", {desc="Save current buffer"})
map("n", "wq", "<cmd>wq<cr>", {desc="Save and quit current buffer"})
map("n", "qq", "<cmd>q<cr>", {desc="Quit current buffer"})
map("n", "<Space>t", "<cmd>TroubleToggle<cr>", {desc = "Open trouble"})
