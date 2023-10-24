return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  lazy = false,
  opts = {
    colors = {
      nontext = "#89898a",
    },
  },
  config = function(_, opts)
    require("dracula").setup(opts)
    vim.cmd([[colorscheme dracula]])
  end,
}
