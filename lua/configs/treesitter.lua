require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "lua",
    -- PHP / Laravel / Blade
    "php",
    "blade",
    -- Vue / JavaScript
    "vue",
    "javascript",
    "typescript",
    "tsx",
    -- Web
    "html",
    "css",
    "scss",
    "json",
    "yaml",
    -- Go
    "go",
    "gomod",
    "gosum",
    -- Python
    "python",
    -- Other
    "bash",
    "markdown",
    "markdown_inline",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
  -- NO autotag here anymore
}

