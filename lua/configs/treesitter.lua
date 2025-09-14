require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "lua",
    "php",
    "vue",
    "html",
    "css",
    "javascript",
    "typescript",
    "go",
    "python",
    "json",
    "bash",
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

