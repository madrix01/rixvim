local map = vim.keymap.set

map('n', "<Space>f", function ()
  require("telescope.builtin").find_files({hidden = true, no_ignore = true})
end)

map('n', "<Space>g", function ()
  require("telescope.builtin").live_grep()
end)

map("n", "t", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer tab" })
map("n", "T", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer tab"})
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", {desc = "Open file tree"})
map("n", "<C-d>", "<cmd>bdelete<cr>", {desc = "Delete current buffer"})
map({"n", "i", "v", "t"}, "<C-t>", "<cmd>ToggleTerm<cr>", {desc = "Open terminal"})
map("n", "ww", "<cmd>w<cr>", {desc="Save current buffer"})
map("n", "wq", "<cmd>wq<cr>", {desc="Save and quit current buffer"})
map("n", "qq", "<cmd>q<cr>", {desc="Quit current buffer"})
map("n", "<Space>t", "<cmd>TroubleToggle<cr>", {desc = "Open trouble"})
-- map({"n", "i", "v", "t"}, "<C-\\>", "<cmd>FloatermToggle<cr>", {desc = "Open float term"})
-- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {})

function _G.set_terminal_keymaps()
  print("helo wirf")
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
