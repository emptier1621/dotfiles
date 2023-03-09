-- Setup global config
require('neoterm').setup({
    clear_on_run = true, -- run clear command before user specified commands
    mode = 'vertical',   -- vertical/horizontal/fullscreen
    noinsert = false     -- disable entering insert mode when opening the neoterm window
})

-- Keybinds
local neoterm = require('neoterm')
vim.keymap.set("n","<leader>t",neoterm.open,{silent=true})
vim.keymap.set("n","<leader>tt",neoterm.toggle,{silent=true})
vim.keymap.set("n","<leader>tc",neoterm.close,{silent=true})
vim.keymap.set("n","<leader>tr",neoterm.rerun,{silent=true})
