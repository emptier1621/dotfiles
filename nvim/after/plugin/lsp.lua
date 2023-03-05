local lsp = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint','html','cssls','dockerls','tailwindcss','clangd','rust_analyzer','pyright','omnisharp','sqlls' ,'luals'})


local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local bufopts = { noremap=true, silent=true, buffer=bufnr }
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr}
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
end)


-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
