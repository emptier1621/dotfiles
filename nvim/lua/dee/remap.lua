local opts = {noremap = true, silent = true}

--dividir pantalla en dos
vim.keymap.set("n", "<leader>V", ":vsplit<CR>", opts)

--salir de busqueda con escape
vim.keymap.set("n", "<esc>", ":noh<return><esc>", opts)
