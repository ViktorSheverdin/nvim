return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-f>', builtin.git_files, {desc = 'Look only git files. Good to have when there are node_modules in the repo'})

        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({search = vim.fn.input("Grep > ")})
        end
        , { desc = 'Telescope find files' })
    end,

}
