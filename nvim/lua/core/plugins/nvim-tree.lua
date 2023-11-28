vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true
  }
})

vim.keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<leader>ff", ":NvimTreeFocus<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fc", ":NvimTreeFindFile<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fs", ":NvimTreeCollapse<CR>", { noremap = true })
