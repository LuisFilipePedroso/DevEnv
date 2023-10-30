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
-- return {
--   "Mofiqul/dracula.nvim",
--   name = "dracula",
--   lazy = false,
--   opts = {
--     colors = {
--       nontext = "#89898a",
--     },
--   },
--   config = function(_, opts)
--     require("dracula").setup(opts)
--     vim.cmd([[colorscheme dracula]])
--   end,
-- }
