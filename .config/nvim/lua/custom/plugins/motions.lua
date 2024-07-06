return {
    {
        'christoomey/vim-tmux-navigator',
        config = function()
            vim.keymap.set('n', 'C-h', ':TmuxNavigatorLeft<CR>')
            vim.keymap.set('n', 'C-j', ':TmuxNavigatorDown<CR>')
            vim.keymap.set('n', 'C-k', ':TmuxNavigatorUp<CR>')
            vim.keymap.set('n', 'C-l', ':TmuxNavigatorRight<CR>')
        end,
    },
    {
        'ggandor/leap.nvim',
        dependencies = { 'tpope/vim-repeat' },
        config = function()
            vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
            vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
            vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)')

            -- Define equivalence classes for brackets and quotes, in addition to
            -- the default whitespace group.
            require('leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }

            -- Set background to gray in searchable area
            vim.api.nvim_set_hl(0, 'LeapBackdrop', { fg = '#777777' })
        end,
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            padding = true,
            ignore = nil,

            toggler = { line = 'gcc', block = 'gbc' },
            opleader = { line = 'gc', block = 'gb' },
            extra = { above = 'gcO', below = 'gco', eol = 'gcA' },

            mappings = {
                basic = true,  -- `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                extra = false, -- `gco`, `gcO`, `gcA`
            },
        },
        config = function()
            local api = require('Comment.api')
            local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
            local toggole_linewise_selection = function()
                vim.api.nvim_feedkeys(esc, 'nx', false)
                api.toggle.linewise(vim.fn.visualmode())
            end

            -- <C-_> means Ctrl slash, `_` is a `/`
            vim.keymap.set('n', '<C-_>', api.toggle.linewise.current, { noremap = true, silent = true })
            vim.keymap.set('v', '<C-_>', toggole_linewise_selection, { noremap = true, silent = true })
        end,
    },
    {
        'kylechui/nvim-surround',
        version = '*',
        event = 'VeryLazy',
        config = function()
            require('nvim-surround').setup({})
            vim.keymap.set('v', '(', '<Plug>(nvim-surround-visual)(')
            vim.keymap.set('v', ')', '<Plug>(nvim-surround-visual))')
            vim.keymap.set('v', '{', '<Plug>(nvim-surround-visual){')
            vim.keymap.set('v', '}', '<Plug>(nvim-surround-visual)}')
            -- I still want to be able to do < and > for indentation
            -- vim.keymap.set('v', '<', '<Plug>(nvim-surround-visual)<', opts)
            -- vim.keymap.set('v', '>', '<Plug>(nvim-surround-visual)>', opts)
            vim.keymap.set('v', '[', '<Plug>(nvim-surround-visual)[')
            vim.keymap.set('v', ']', '<Plug>(nvim-surround-visual)]')
            vim.keymap.set('v', "'", "<Plug>(nvim-surround-visual)'")
            vim.keymap.set('v', '"', '<Plug>(nvim-surround-visual)"')
            vim.keymap.set('v', '`', '<Plug>(nvim-surround-visual)`')
        end,
    },
}
