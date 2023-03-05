-- Definir tecla lidervim
    vim.g.mapleader = ","

-- Evitar swap 
    vim.opt.backup = false
    vim.opt.errorbells = false
    vim.opt.swapfile = false
    vim.opt.signcolumn = 'yes'

-- Permitir interactuar con el mouse
    vim.opt.mouse = 'a'

-- Comparir el portapeles fuera de nvim
    vim.opt.clipboard = 'unnamedplus'

-- configuracion de autocompletado
    vim.opt.completeopt = 'menuone,noinsert,noselect'

-- Mostrar numero de linea
    vim.opt.number = true

-- Mostrar como primera linea a la linea actual
    vim.opt.relativenumber = true

-- Mostrar donde terminan los signos de agrupacion
    vim.opt.showmatch = true

-- marca inicio y final de los folds (pliegues). foldmethod, defaul foldmaker
    vim.opt.foldmethod = 'marker'

-- colorear columna
    vim.opt.colorcolumn = '80'

-- Dividir pantalla de forma horizontal
    vim.opt.splitright = true
    vim.opt.splitbelow = true

-- Ignorar mayusculas al buscar
    vim.opt.ignorecase = true
    vim.opt.smartcase = true

-- Mantener la identacion
    vim.opt.linebreak = true

-- Soporte para colores 24 bit
    vim.opt.termguicolors = true

-- identado 4 espacios
    vim.opt.expandtab = true
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.smartindent = true

-- Ocultar advertencia al abrir un archivo
    vim.opt.hidden = true

-- Aumentar el historial
    vim.opt.history = 100

-- Solo se pinta cuando se necesita (terminales rapidas)
    vim.opt.lazyredraw = true

-- columnas maximas por linea, para que el texto baje a la sgt
    vim.opt.synmaxcol = 240

-- tasa de refresco (ms)
    vim.opt.updatetime = 150

-- github copilot configs
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-J>", ':Copilot setup("<CR>")', {})
    vim.g.copilot_filetypes = {
        ["*"] = false,
        ["javascript"] = true,
        ["typescript"] = true,
        ["lua"] = false,
        ["rust"] = true,
        ["c"] = true,
        ["c#"] = true,
        ["c++"] = true,
        ["go"] = true,
        ["python"] = true,
        ["html"] = true,
        ["css"] = true,
    }
