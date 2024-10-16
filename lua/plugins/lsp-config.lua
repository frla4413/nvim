return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    dependencies = {"mason.nvim"},
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers{
        function (server_name)
          require("lspconfig")[server_name].setup{}
        end,
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
}
