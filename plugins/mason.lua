-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "dotls",
        "yamlls",
        "lua_ls",
        "bashls",
        "cssls",
        "cssmodules_ls",
        "emmet_language_server",
        "eslint",
        "html",
        "jsonls",
        "tailwindcss",
        "tsserver",
        "volar",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "beautysh",
        "prettierd",
        "luacheck",
        "markdownlint",
        "jsonlint",
        "eslint_d",
        "shellcheck",
        "yamlfmt",
        "yamllint",
      })
      opts.automatic_installation = true
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "js",
      })
    end,
  },
}
