require('fzf-lua').setup()

vim.keymap.set("n","<leader>f",":FzfLua<CR>",{silent=true})
