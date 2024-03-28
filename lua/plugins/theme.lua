-- return {
--   "dracula/vim",
--   name = "dracula",
--   lazy = false,
--   opts = {
--     colorscheme_bg = "dark",
--   },
--   config = function()
--     vim.cmd([[colorscheme dracula]])
--   end,
-- }

-- return {
--   "Rigellute/shades-of-purple.vim",
--   -- name = "shades-of-purple",
--   lazy = false,
--   opts = {
--     termguicolors = vim.fn.has("termguicolors") == 1,
--   },
--   config = function()
--     vim.cmd([[syntax enable]])
--     vim.cmd([[colorscheme shades_of_purple]])
--   end,
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
      -- term_colors = true,
      -- transparent_background = false,
      -- no_italic = false,
      -- no_bold = false,
      -- styles = {
      --   comments = {},
      --   conditionals = {},
      --   loops = {},
      --   functions = {},
      --   keywords = {},
      --   strings = {},
      --   variables = {},
      --   numbers = {},
      --   booleans = {},
      --   properties = {},
      --   types = {},
      -- },
      -- highlight_overrides = {
      --   mocha = function(C)
      --     return {
      --       TabLineSel = { bg = C.pink },
      --       CmpBorder = { fg = C.surface2 },
      --       Pmenu = { bg = C.none },
      --       TelescopeBorder = { link = "FloatBorder" },
      --     }
      --   end,
      -- },
    })

    vim.cmd([[colorscheme catppuccin-macchiato]])
    -- vim.cmd([[autocmd FileType NvimTree hi! link NvimTreeNormal NeoTreeNormal]])
  end,
}
