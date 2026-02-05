vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.c", "*.cpp", "*.h", "*.hpp" , "*.lua", "*.py"},
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- Rust
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs",
  callback = function()
    vim.lsp.buf.format({
      filter = function(client)
        return client.name == "rust_analyzer"
      end,
    })
  end,
})

