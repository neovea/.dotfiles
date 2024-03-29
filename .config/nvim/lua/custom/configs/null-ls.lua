local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt,                                                                         -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with({ filetypes = { "html", "markdown", "css", "vue", "javascript" } }), -- so prettier works only on these filetypes
  b.diagnostics.eslint_d,
  -- Lua
  b.formatting.stylua,
}

null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- on later neovim version, you should use vim.lsp.buf.formatting_sync() instead
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
})
