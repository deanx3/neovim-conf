return {
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {
            'kevinhwang91/promise-async'
        },
        -- config = function()
            -- vim.o.foldcolumn = '1' -- '0' is also fine
            -- vim.o.foldlevel = 99 -- High value needed for ufo, adjust as needed
            -- vim.o.foldlevelstart = 99
            -- vim.o.foldenable = true
            --
            -- -- Keymaps for opening and closing all folds
            -- vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
            -- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
            --
            -- -- Option 1: Using coc.nvim as LSP client
            -- Install coc.nvim plugin and configure it for use with ufo (uncomment if needed)
            -- use { 'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile' }
            -- require('ufo').setup()

            -- Option 2: nvim-lsp as LSP client
            -- Manually enable foldingRange capability for LSP servers
            -- local capabilities = vim.lsp.protocol.make_client_capabilities()
            -- capabilities.textDocument.foldingRange = {
            --     dynamicRegistration = false,
            --     lineFoldingOnly = true
            -- }
            -- local language_servers = require('lspconfig').util.available_servers() -- Replace with your LSP servers
            -- for _, ls in ipairs(language_servers) do
            --     require('lspconfig')[ls].setup({
            --         capabilities = capabilities
            --         -- Add additional LSP settings here if needed
                -- })
            -- end
            -- require('ufo').setup()
            --
            -- -- Option 3: Use treesitter as the main folding provider
            -- require('ufo').setup({
            --     provider_selector = function(_, _, _)
            --         return {'treesitter', 'indent'}
            --     end
            -- })
            --
            -- Option 4: Disable all providers (Not recommended for performance reasons)
            -- require('ufo').setup({
            --     provider_selector = function(_, _, _)
            --         return ''
            --     end
            -- })
        -- end
    }
}

