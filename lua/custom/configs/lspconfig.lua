local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

nvim_lsp.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = nvim_lsp.util.root_pattern("Cargo.toml"),
})

local servers = { "html", "cssls", "jsonls", "tsserver", "vimls", "yamlls", "lua_ls"}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
