local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfigf = require('lspconfig')

local servers = {"tsserver", "tailwindcss", "eslint", "cssls"}

for _, lsp in ipairs(servers) do
  lspconfigf[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end
