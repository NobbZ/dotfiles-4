-- NOTE: A list of language servers (and potentially their config)
-- Accepts either true to enable, false to disable or a table with settings
return {
    lua_ls = {
        settings = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.stdpath('config') .. '/lua'] = true,
                },
            },
        },
    }, -- lua
    clangd = true, -- C/C++
    gradle_ls = true, -- java package manager
    -- jdtls = true, -- java eclipse lsp
    kotlin_language_server = true, -- kotlin
    pyright = {
        settings = {
            python = {
                pythonPath = '~/python/venv/bin/python',
            },
        },
    }, -- python
    rust_analyzer = false, -- NOTE: using rustaceanvim
    bashls = true, -- bash
    taplo = true, -- toml
    lemminx = true, -- xml
    yamlls = true, -- yaml
    jsonls = true, -- json

    -- For CS50x, sorry for everyone who sees this
    -- FIX: this should be removed ASAP
    html = true,
    cssls = true,
    eslint = true,
    tsserver = true,
}
