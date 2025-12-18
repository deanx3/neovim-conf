return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-tool-installer").setup({
      ensure_installed = {
        -- Language Servers
        "gopls",                    -- Go
        "intelephense",             -- PHP / Laravel
        "vue-language-server",      -- Vue (vue_ls)
        "html-lsp",                 -- HTML
        "css-lsp",                  -- CSS
        "typescript-language-server", -- JS/TS
        "pyright",                  -- Python

        -- PHP / Laravel / Blade
        "php-cs-fixer",             -- PHP formatter
        "phpstan",                  -- PHP static analysis
        "blade-formatter",          -- Blade formatter

        -- Go
        "gofumpt",                  -- Go formatter (stricter gofmt)
        "goimports",                -- Go imports organizer
        "golines",                  -- Go line length formatter
        "golangci-lint",            -- Go linter

        -- JavaScript / Vue
        "eslint_d",                 -- JS/TS/Vue linter
        "prettierd",                -- JS/TS/Vue/HTML/CSS formatter

        -- Python
        "black",                    -- Python formatter
        "isort",                    -- Python import sorter
        "flake8",                   -- Python linter
        "mypy",                     -- Python type checker
      },
      auto_update = false,
      run_on_start = true,
      start_delay = 3000,
    })
  end,
}

