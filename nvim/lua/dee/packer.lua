vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
    -- packer: Gestor de plugins
    use 'wbthomason/packer.nvim'

    -- nvim-colorizer: mostrar colores en css, etc
    use 'norcalli/nvim-colorizer.lua'

    -- eva0: tema colores
    use 'hachy/eva01.vim'

    -- neoterm: Terminal flotante
    use 'itmecho/neoterm.nvim'

    -- feline: Barra de estado inferior
    use 'feline-nvim/feline.nvim'

    -- autotag: Cierra automaticamente las etiquetas html
    use 'windwp/nvim-ts-autotag'

    -- indent-blankline: Identacion de bloques de codigo (simbolos |)
    use "lukas-reineke/indent-blankline.nvim"

    -- nvim-comment: Comentar seleccion
    use 'terrortylor/nvim-comment'

    -- vim-gitgutter: Muesta con simbolos lineas eliminadas, agregadas, etc.
    use 'airblade/vim-gitgutter'

    -- gitsigns: Muestra con simbolos los cambios con respecto a git
    use {'lewis6991/gitsigns.nvim',}

    -- fzf-lua: Permite buscar texto en todos los archivos del directorio
    use { 'ibhagwan/fzf-lua',requires = { 'nvim-tree/nvim-web-devicons' }}

    -- nvim-autopairs: Cierra automaticamente los simbolos de agrupacion
    use {"windwp/nvim-autopairs",config=function() require("nvim-autopairs").setup {} end}

    -- telescope: Sirve para navegar entre archivos con una vista previa
    use {'nvim-telescope/telescope.nvim', tag = '0.1.1',requires={{'nvim-lua/plenary.nvim'}}}

    -- nvim-treesitter: Resaltar sintaxis
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- lsp-zero: Autocompletado con lsp mas simple y con ui
    use {'VonHeikemen/lsp-zero.nvim',branch = 'v1.x',requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lua'},
        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }}

    -- nvim-tree: Explorador de archivos similar a vs-code
    use {'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons',},tag = 'nightly'
    }

    -- todo-comments: Sirve para ver mejor los cometnarios TODO,FIX,BUG,etc
    use {"folke/todo-comments.nvim",requires = "nvim-lua/plenary.nvim",}

    -- trouble: Sirve como ventana de logs
    use {"folke/trouble.nvim",requires = "nvim-tree/nvim-web-devicons",}
    -- markdown-preview: Visualizador ded md
    use({"iamcco/markdown-preview.nvim",run = function() 
        vim.fn["mkdp#util#install"]() 
    end,})
end)
