local themes = { "catppuccin", "melange", "kanagawa" }
local current = 1

function SwitchTheme()
    current = current % #themes + 1
    vim.cmd("colorscheme " .. themes[current])
    print("Switched to: " .. themes[current])
end

vim.api.nvim_set_keymap('n', '<leader>t', ':lua SwitchTheme()<CR>', { noremap = true, silent = true })
