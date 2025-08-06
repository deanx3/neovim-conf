{
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-tool-installer").setup {
      ensure_installed = {
        -- 🧠 Language Servers
        "gopls",                    -- Golang
        "intelephense",            -- PHP / Laravel
        "vue-language-server",     -- Vue (Volar)
        "html-lsp",                -- HTML
        "css-lsp",                 -- CSS
        "tsserver",                -- JS/TS
        "pyright",                 -- Python

        -- 🛠 Formatters & Linters
        "eslint_d",                -- JS/TS/Vue
        "prettierd",               -- JS/TS/Vue formatting
        "php-cs-fixer",            -- PHP formatting
        "golines",                 -- Go formatting
        "black",                   -- Python formatter
        "flake8",                  -- Python linter
      },
      auto_update = false,
      run_on_start = true,
      start_delay = 3000,
    }
  end,
}

