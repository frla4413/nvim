return { 
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require'nvim-treesitter.configs'.setup{
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        auto_install = false,
        highlight = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<Leader>ss",
            node_incremental = "<Leader>si",
            scope_incremental = "<Leader>sc",
            node_decremental = "<Leader>sd",
          },
        },
        textobjects = {
          select = {
            enable = true,
  
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
  
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
              ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
            },
            selection_modes = {
              ['@parameter.outer'] = 'v', -- charwise
              ['@function.outer'] = 'V', -- linewise
              ['@class.outer'] = '<c-v>', -- blockwise
            },
            include_surrounding_whitespace = true,
          },
        },
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
}
