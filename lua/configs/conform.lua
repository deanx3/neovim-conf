local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    -- PHP / Laravel / Blade
    php = { "php_cs_fixer" },
    blade = { "blade-formatter" },

    -- Go
    go = { "goimports", "gofumpt" },

    -- JavaScript / TypeScript / Vue
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    vue = { "prettierd" },

    -- Web
    html = { "prettierd" },
    css = { "prettierd" },
    scss = { "prettierd" },
    json = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },

    -- Python
    python = { "isort", "black" },
  },

  -- Uncomment to enable format on save
  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
