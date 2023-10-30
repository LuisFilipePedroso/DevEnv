return {
  "dracula/vim",
  name = "dracula",
  lazy = false,
  opts = {
    colorscheme_bg = "dark",
  },
  config = function()
    vim.cmd([[colorscheme dracula]])
  end,
}
