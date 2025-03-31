-- Use Packer to manage plugins
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Theming
    use 'catppuccin/nvim'
    use 'nvim-lualine/lualine.nvim'
    use "rebelot/kanagawa.nvim"
    use "savq/melange-nvim"
    
    
    -- Treesitter for better syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end
    }   

    -- File explorer
    use 'nvim-tree/nvim-tree.lua'
end)

