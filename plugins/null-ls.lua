return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    local cmp_nvim_lsp = require "cmp_nvim_lsp"

    require("lspconfig").clangd.setup {
      on_attach = on_attach,
      capabilities = cmp_nvim_lsp.default_capabilities(),
      cmd = {
        "clangd",
        "--offset-encoding=utf-16",
      },
    }
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}
