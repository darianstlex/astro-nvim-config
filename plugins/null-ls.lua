return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
       -- Code Actions
--         null_ls.builtins.code_actions.cspell,
        null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.code_actions.shellcheck,
        null_ls.builtins.code_actions.gitsigns,

        -- Completion
        null_ls.builtins.completion.tags,

        -- Diagnostics
--         null_ls.builtins.diagnostics.cspell,
        null_ls.builtins.diagnostics.dotenv_linter,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.luacheck,
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.yamllint,
        null_ls.builtins.diagnostics.zsh,

        -- Formatting
        null_ls.builtins.formatting.json_tool,
        null_ls.builtins.formatting.markdownlint,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.yamlfmt,
    }
    return config -- return final config table
  end,
}
