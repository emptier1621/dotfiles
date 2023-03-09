function UseColorScheme(color)
    color = color or "eva01"
    background = background or "dark"
    vim.cmd.colorscheme(color)
end

UseColorScheme()
