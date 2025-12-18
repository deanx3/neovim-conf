-- Neovim 0.11+ native LSP configuration
local servers = { "gopls", "html", "cssls", "intelephense", "vue_ls", "pyright", "ts_ls" }

-- Setup capabilities for nvim-cmp completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if has_cmp then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Global on_attach function for keybindings etc.
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, silent = true }
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<leader>ra", vim.lsp.buf.rename, opts)
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
end

-- Configure each server
for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    capabilities = capabilities,
    on_attach = on_attach,
  })
end

-- Enable all servers
vim.lsp.enable(servers)
