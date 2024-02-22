local options = {
  ensure_installed = {
    "bash-language-server",
    "css-lsp",
    "deno",
    "dockerfile-ls",
    "eslint-lsp",
    "html-lsp",
    "json-lsp",
    "jsonls",
    "lua-language-server",
    "prettier",
    "stylua",
    "sumneko_lua",
    "tsserver",
    "typescript-language-server",
    "vimls",
    "vue-language-server",
    "yamlls",
  },

  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
