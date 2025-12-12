return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- C/C++ LSP - clangd will be automatically installed with mason
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
          filetypes = { "c", "cpp", "objc", "objcpp" },
        },
        -- JavaScript/TypeScript LSP - typescript-language-server will be installed with mason
        tsserver = {
          filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
          settings = {
            typescript = {
              preferences = {
                disableSuggestions = false,
              },
            },
            javascript = {
              preferences = {
                disableSuggestions = false,
              },
            },
          },
        },
      },
    },
  },
}